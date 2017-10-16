class Category < ActiveRecord::Base
  has_many :items
  #foreign relations

  validates :name, :presence => true
  #validations

end
