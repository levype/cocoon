class Add < ActiveRecord::Base
  has_many :pings
  has_many :photos
  has_one :landlord
end
