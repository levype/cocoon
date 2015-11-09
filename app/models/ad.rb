class Ad < ActiveRecord::Base
  has_many :pings
  has_many :photos
  belongs_to :location
end
