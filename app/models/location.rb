class Location < ActiveRecord::Base
  has_many :items
  #foreign relations

  validates :city, :presence => true
  validates :state, :presence => true
  #validations
end
