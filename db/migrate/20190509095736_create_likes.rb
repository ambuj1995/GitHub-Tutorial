class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.boolean :liked
      t.integer :imageable_id
      t.string  :imageable_type

      t.timestamps
    end
     add_index :likes, [:imageable_type, :imageable_id]
  end
end
