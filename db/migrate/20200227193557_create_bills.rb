class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :company_name
      

      t.timestamps
    end
  end
end
