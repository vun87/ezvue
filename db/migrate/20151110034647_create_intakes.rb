class CreateIntakes < ActiveRecord::Migration
  def change
    create_table :intakes do |t|
      t.date :rcvd_date
      t.date :post_date
      t.integer :pgs
      t.date :scan_date
      t.text :notes
      t.date :service_date
      
      t.timestamps null: false
    end
  end
end
