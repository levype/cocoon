class Add < ActiveRecord::Base
  has_many :pings
  has_many :photos
end
