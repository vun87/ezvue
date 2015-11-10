class Client < ActiveRecord::Base
	has_one :ClientType
#	accepts_nested_attributes_for :ClientType
end
