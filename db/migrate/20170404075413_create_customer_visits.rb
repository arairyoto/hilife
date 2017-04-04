class CreateCustomerVisits < ActiveRecord::Migration
  def change
    create_table :customer_visits do |t|
      t.integer :customer_id
      t.integer :clinic_id

      t.timestamps null: false
    end
  end
end
