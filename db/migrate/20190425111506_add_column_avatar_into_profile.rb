class AddColumnAvatarIntoProfile < ActiveRecord::Migration[5.2]
  def up
    add_attachment :profiles, :avatar
  end

  def down
    remove_attachment :profiles, :avatar
  end
end
