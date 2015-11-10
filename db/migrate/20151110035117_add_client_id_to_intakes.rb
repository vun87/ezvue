class AddClientIdToIntakes < ActiveRecord::Migration
  def change
  	add_reference :intakes, :client, index: true
  end
end
