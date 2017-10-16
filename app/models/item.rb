class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :location
  belongs_to :user
  #foreign relations

  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :location_id, :presence => true
  validates :category_id, :presence => true
  #validations


end
