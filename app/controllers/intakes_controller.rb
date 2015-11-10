class IntakesController < ApplicationController
before_action :find_intake, only: [:show, :edit, :update, :destroy]
	def index
		@intake = Intake.all
	end
	
	def new
		@intake = Intake.new
	end

	def create
		@intake = Intake.new(intake_params)
		@intake.save
		redirect_to @intake
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end



private
	def intake_params
		params.require(:intake).permit!
	end
	
	def find_intake
		@intake = Intake.find(params[:id])
	end
end
