class AddMembreIdToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :membre_id, :integer
  end
end
