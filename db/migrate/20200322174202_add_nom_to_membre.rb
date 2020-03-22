class AddNomToMembre < ActiveRecord::Migration[5.2]
  def change
    add_column :membres, :nom, :string
  end
end
