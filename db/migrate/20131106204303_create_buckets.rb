class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.integer :kid_id

      t.timestamps
    end
    add_index :buckets, :kid_id
  end
end
