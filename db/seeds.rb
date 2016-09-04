Lender.create(name: 'Company #1')

Loan.create(lender_id: 1, amount: 1_000_000, normal_rate: 0.3, increased_rate: 0.5,
  start_date: Time.current.utc.beginning_of_month, end_date: (Time.current.utc + 6.months).beginning_of_month)

Repayment.create(loan_id: 1, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 1.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 2.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 191_666.66, increased_rate_flag: false, date: (Time.current.utc + 3.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 4.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 5.months).beginning_of_month)
Repayment.create(loan_id: 1, amount: 191_666.66, increased_rate_flag: false, date: (Time.current.utc + 6.months).beginning_of_month)


Lender.create(name: 'Company #2')

Loan.create(lender_id: 2, amount: 1_000_000, normal_rate: 0.3, increased_rate: 0.5,
  start_date: Time.current.utc.beginning_of_month, end_date: (Time.current.utc + 6.months).beginning_of_month)

Repayment.create(loan_id: 2, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 1.months).beginning_of_month)
Repayment.create(loan_id: 2, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 2.months).beginning_of_month)
Repayment.create(loan_id: 2, amount: 191_666.66, increased_rate_flag: false, date: (Time.current.utc + 3.months).beginning_of_month)
Repayment.create(loan_id: 2, amount: 525_000,    increased_rate_flag: false, date: (Time.current.utc + 4.months).beginning_of_month)


Lender.create(name: 'Company #3')

Loan.create(lender_id: 3, amount: 1_000_000, normal_rate: 0.3, increased_rate: 0.5,
  start_date: Time.current.utc.beginning_of_month, end_date: (Time.current.utc + 6.months).beginning_of_month)

Repayment.create(loan_id: 3, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 1.months).beginning_of_month)
Repayment.create(loan_id: 3, amount: 191_666.67, increased_rate_flag: false, date: (Time.current.utc + 2.months).beginning_of_month)
Repayment.create(loan_id: 3, amount: 208_333.33, increased_rate_flag: true,  date: (Time.current.utc + 3.months).beginning_of_month)
Repayment.create(loan_id: 3, amount: 208_333.33, increased_rate_flag: true,  date: (Time.current.utc + 4.months).beginning_of_month)
Repayment.create(loan_id: 3, amount: 208_333.33, increased_rate_flag: true,  date: (Time.current.utc + 5.months).beginning_of_month)
Repayment.create(loan_id: 3, amount: 208_333.33, increased_rate_flag: true,  date: (Time.current.utc + 6.months).beginning_of_month)
