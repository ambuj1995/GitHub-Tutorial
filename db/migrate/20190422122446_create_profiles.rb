class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :mobile
      t.string :city
      t.string :country
      t.string :hobbies
      t.timestamps
    end
  end
end
