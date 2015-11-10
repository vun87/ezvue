class AddAddressToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :address, :string
  	add_column :clients, :office_contact, :string
  	add_column :clients, :phone, :string
  	add_column :clients, :fax, :string
  	add_column :clients, :delivery_method, :string
  	add_column :clients, :notes, :text
  end
end
