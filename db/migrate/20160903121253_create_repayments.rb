class CreateRepayments < ActiveRecord::Migration
  def change
    create_table :repayments do |t|
      t.references :loan, index: true, foreign_key: true

      # values up to 9`999`999`999.00
      t.decimal :amount, null: false, precision: 10, scale: 2

      t.boolean :increased_rate, null: false, default: false

      t.datetime :date, null: false
    end
  end
end
