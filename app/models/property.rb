class Property < ActiveRecord::Base
  attr_accessible :address, :price, :longitude, :latitude
end
