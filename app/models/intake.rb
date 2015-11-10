class Intake < ActiveRecord::Base
	has_one :client
	has_one :IntakeType
end
