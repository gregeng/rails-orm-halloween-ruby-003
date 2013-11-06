class CreateHouseCandies < ActiveRecord::Migration
  def change
    create_table :house_candies do |t|
      t.integer :bucket_id
      t.integer :house_id

      t.timestamps
    end
    add_index :house_candies, :bucket_id
    add_index :house_candies, :house_id
  end
end
