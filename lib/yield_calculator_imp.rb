class YieldCalculatorImp
  VERSION = '1.0'
  MONTHS_COUNT = 12
  SECONDS_IN_MONTH = (60 * 60 * 24 * 365.25 / 12)

  def initialize(db_link)
    @db_link = db_link
  end

  def get_historical_yield()
    (get_repayments_percents_sum() / get_loans_amount()) * MONTHS_COUNT / get_loans_period()
  end

  private

  def get_aggregation_result(query)
    result = begin
      @db_link.execute(query)
    rescue
    end
    return nil unless result

    if result.kind_of?(PG::Result)
      values = result.values
      return nil if !values || !values.kind_of?(Array)
      values.flatten[0]
    else
      return nil if !result.kind_of?(Array) || !result.any?
      row = result[0]
      return nil if !row || !row.kind_of?(Hash) || !row.any?
      row.values[0]
    end
  end

  def get_repayments_percents_sum()
    query = <<-SQL
      SELECT SUM(repayment_percents)
      FROM (
        SELECT SUM(loans.amount * (CASE WHEN repayments.increased_rate_flag = 't' THEN loans.increased_rate ELSE loans.normal_rate END) / #{MONTHS_COUNT}) as repayment_percents
        FROM loans INNER JOIN repayments ON loans.id = repayments.loan_id
        GROUP BY loans.id
      ) AS percents;
    SQL

    get_aggregation_result(query).to_f
  end

  def get_loans_amount()
    query = <<-SQL
      SELECT SUM(loans.amount)
      FROM loans;
    SQL

    get_aggregation_result(query).to_f
  end

  def get_loans_period()
    query = <<-SQL
      SELECT MIN(loans.start_date)
      FROM loans;
    SQL

    start_date = get_aggregation_result(query)

    query = <<-SQL
      SELECT MAX(loans.end_date)
      FROM loans;
    SQL

    end_date = get_aggregation_result(query)

    return nil if !start_date || !end_date

    ((Time.parse(end_date) - Time.parse(start_date)) / SECONDS_IN_MONTH).round
  end

end
