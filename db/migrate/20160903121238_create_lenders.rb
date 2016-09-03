class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.string :name, null: false
    end
  end
end
