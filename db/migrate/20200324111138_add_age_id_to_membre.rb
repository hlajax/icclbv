class AddAgeIdToMembre < ActiveRecord::Migration[5.2]
  def change
    add_column :membres, :age_id, :integer
  end
end
