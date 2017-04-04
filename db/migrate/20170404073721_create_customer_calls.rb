class CreateCustomerCalls < ActiveRecord::Migration
  def change
    create_table :customer_calls do |t|
      t.integer :customer_id
      t.string :uketsuke_id
      t.string :nyudenbi
      t.string :nyuden_jikoku
      t.string :shosai

      t.timestamps null: false
    end
  end
end
