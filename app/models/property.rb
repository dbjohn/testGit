class Property < ActiveRecord::Base
  attr_accessor :commute_score, :commute_time_to, :commute_time_from  
  # attr_accessor :commute_time_to
  # attr_accessor :commute_time_from  
  attr_accessible :address, :price, :longitude, :latitude, :commute_score, :commute_time_to, :commute_time_from
  
		def <=> (property_2)
				if commute_score < property_2.commute_score
					return -1
				elsif commute_score > property_2.commute_score
					return 1
				else
					return 0
				end
		end
end

