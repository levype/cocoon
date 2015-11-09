class Ad < ActiveRecord::Base
  has_many :pings
  has_many :photos
  belong_to :location
end
