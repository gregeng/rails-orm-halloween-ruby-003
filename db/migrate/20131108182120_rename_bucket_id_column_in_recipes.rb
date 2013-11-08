class RenameBucketIdColumnInRecipes < ActiveRecord::Migration
  def change
    change_table :house_candies do |t|
      t.rename :bucket_id, :candy_id
    end
  end
end

