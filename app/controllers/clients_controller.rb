class ClientsController < ApplicationController
before_action :find_client, only: [:show, :edit, :update, :destroy]
	def index
		@client = Client.all
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)
		@client.save
		redirect_to @client
	end

	def show
	end
 
	def edit
		@client = Client.find(params[:id])
	end

	def update
		if @client.update(client_params)
			redirect_to @client
		else
			render 'edit'
		end
	end

	def destroy
	end

private

	def client_params
		params.require(:client).permit!
	end

	def find_client
		@client = Client.find(params[:id])
	end
end
