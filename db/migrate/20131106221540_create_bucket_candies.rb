class CreateBucketCandies < ActiveRecord::Migration
  def change
    create_table :bucket_candies do |t|
      t.integer :bucket_id
      t.integer :candy_id

      t.timestamps
    end
    add_index :bucket_candies, :bucket_id
    add_index :bucket_candies, :candy_id
  end
end
