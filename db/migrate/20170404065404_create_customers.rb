class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :name_kana
      t.string :sex
      t.string :zip_code
      t.string :tel
      t.boolean :marketing

      t.timestamps null: false
    end
  end
end
