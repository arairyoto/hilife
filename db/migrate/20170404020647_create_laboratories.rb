class CreateLaboratories < ActiveRecord::Migration
  def change
    create_table :laboratories do |t|
      t.string :name
      t.string :hd_name
      t.string :zip_code
      t.string :address
      t.string :tel
      t.string :fax
      t.string :email
      t.string :remarks

      t.timestamps null: false
    end
  end
end
