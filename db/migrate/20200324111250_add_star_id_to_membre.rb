class AddStarIdToMembre < ActiveRecord::Migration[5.2]
  def change
    add_column :membres, :star_id, :integer
  end
end
