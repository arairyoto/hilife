class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :abb_name
      t.string :name
      t.string :hosho_name
      t.string :hd_name
      t.string :zip_code
      t.string :address
      t.string :tel
      t.string :fax
      t.string :email
      t.string :remarks
      t.string :licence

      t.timestamps null: false
    end
  end
end
