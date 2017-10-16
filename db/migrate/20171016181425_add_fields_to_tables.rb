class AddFieldsToTables < ActiveRecord::Migration
  def change
    add_column :items, :name, :string, :null=> false
    add_column :items, :price, :float, :null=> false, :default => 0.0
    add_column :items, :description, :string, :null=> false, :default => "This item has no description."
    add_column :items, :location_id, :integer, :null => false
    add_column :items, :category_id, :integer, :null => false
    add_column :items, :user_id, :integer, :null => false

    add_column :categories, :name, :string, :null => false
    add_column :locations, :city, :string, :null => false
    add_column :locations, :state, :string, :null => false

  end
end
