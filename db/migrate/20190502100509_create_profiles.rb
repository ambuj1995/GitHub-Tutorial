class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :contact
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode
      

      t.timestamps
    end
  end
end
