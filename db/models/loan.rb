class Loan < ActiveRecord::Base
  belongs_to :lender
  has_many :repayments
end
