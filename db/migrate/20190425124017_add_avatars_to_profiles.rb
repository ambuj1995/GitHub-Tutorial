class AddAvatarsToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :avatars, :string
  end
end
