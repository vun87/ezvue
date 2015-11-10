class AddClientTypeIdToClients < ActiveRecord::Migration
  def change
  	add_reference :clients, :clienttype, index: true
  end
end
