class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :location
  belongs_to :user
  belongs_to :buyer, :class_name => 'User'
  #foreign relations

  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :location_id, :presence => true
  validates :category_id, :presence => true
  #validations

  def sell_to user
    self.update_attribute(:buyer_id, user.id)
  end

  def is_sold?
    self.buyer_id.present?
  end

  def is_available?
    self.buyer_id.nil?
  end

  def is_seller? user
    self.user_id == user.id
  end

  def is_buyer? user
    self.buyer_id == user.id
  end

  def can_be_sold_to? user
    self.is_available? and not self.is_seller? user
  end

end
