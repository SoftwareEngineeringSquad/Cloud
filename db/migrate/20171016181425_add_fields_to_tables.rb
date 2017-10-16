class AddFieldsToTables < ActiveRecord::Migration
  def change
    add_column :category, :name, :string, :null => false
    add_column :location, :city, :string, :null => false
    add_column :location, :state, :string, :null => false



  end
end
