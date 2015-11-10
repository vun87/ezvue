class AddReferenceToIntake < ActiveRecord::Migration
  def change
  	add_reference :intakes, :intaketype, index: true
  end
end
