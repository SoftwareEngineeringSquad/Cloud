class AddFieldToItems < ActiveRecord::Migration
  def change
    add_column :items, :buyer_id, :integer
  end
end
