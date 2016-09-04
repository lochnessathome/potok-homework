class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :lender, index: true, foreign_key: true

      # values up to 9`999`999`999.00
      t.decimal :amount, null: false, precision: 10, scale: 2

      t.decimal :normal_rate, null: false, precision: 1, scale: 4
      t.decimal :increased_rate, null: false, precision: 1, scale: 4

      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
    end
  end
end
