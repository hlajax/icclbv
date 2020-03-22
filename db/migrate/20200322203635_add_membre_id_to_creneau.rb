class AddMembreIdToCreneau < ActiveRecord::Migration[5.2]
  def change
    add_column :creneaus, :membre_id, :integer
  end
end
