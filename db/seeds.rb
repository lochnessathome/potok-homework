Lender.create(name: 'ЮЛ-1')

Loan.create(lender_id: 1, amount: 1_000_000, normal_rate: 0.3, increased_rate: 0.5,
  start_date: Time.current.utc.beginning_of_month, end_date: (Time.current.utc + 6.months).beginning_of_month)

Repayment.create(loan_id: 1, amount: 170_000, increased_rate_flag: false, date: (Time.current.utc + 1.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 170_000, increased_rate_flag: false, date: (Time.current.utc + 2.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 195_000, increased_rate_flag: true,  date: (Time.current.utc + 3.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 170_000, increased_rate_flag: false, date: (Time.current.utc + 4.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 170_000, increased_rate_flag: false, date: (Time.current.utc + 5.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 170_000, increased_rate_flag: false, date: (Time.current.utc + 6.months).beginning_of_month)
