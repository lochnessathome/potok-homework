class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :lender, index: true, foreign_key: true

      # values up to 9`999`999`999.00
      t.decimal :amount, null: false, precision: 10, scale: 2

      t.integer :normal_rate, null: false
      t.integer :increased_rate, null: false

      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer  :period, null: false
    end
  end
end
