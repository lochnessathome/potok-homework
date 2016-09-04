require_relative './yield_calculator_imp'

class YieldCalculator
  VERSION = '1.0'

  def initialize(db_link)
    @imp = YieldCalculatorImp.new(db_link)
  end

  def get_historical_yield()
    @imp.get_historical_yield()
  end
end
