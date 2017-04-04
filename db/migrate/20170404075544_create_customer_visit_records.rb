class CreateCustomerVisitRecords < ActiveRecord::Migration
  def change
    create_table :customer_visit_records do |t|
      t.integer :customer_visit_id
      t.string :shinryobi
      t.string :shinryo_jikoku
      t.string :shinryo_naiyo
      t.string :jikai_shinryobi
      t.string :jikai_shinryo_jikoku

      t.timestamps null: false
    end
  end
end
