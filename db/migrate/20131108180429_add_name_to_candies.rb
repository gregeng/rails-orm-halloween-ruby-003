class AddNameToCandies < ActiveRecord::Migration
  def change
    add_column :candies, :name, :string
  end
end
