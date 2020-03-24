class AddStatutIdToMembre < ActiveRecord::Migration[5.2]
  def change
    add_column :membres, :statut_id, :integer
  end
end
