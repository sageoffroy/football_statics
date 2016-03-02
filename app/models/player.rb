class Player < ActiveRecord::Base
  belongs_to :person
  belongs_to :dominant_foot
  serialize :positions, Array
end
