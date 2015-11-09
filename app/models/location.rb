class Location < ActiveRecord::Base
  has_many :joinlocationtousers
  has_many :ads
end
