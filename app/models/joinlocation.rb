class Joinlocation < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
end
