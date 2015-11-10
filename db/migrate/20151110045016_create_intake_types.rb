class CreateIntakeTypes < ActiveRecord::Migration
  def change
    create_table :intake_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
