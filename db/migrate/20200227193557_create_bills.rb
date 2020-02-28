class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|

      t.integer :user_id
      t.string :company_name
      t.float :amount
      t.datetime :payment_due
      t.string :category

      t.timestamps
    end
  end
end
