class AddHeureDebutAndHeureFinToCreneau < ActiveRecord::Migration[5.2]
  def change
    add_column :creneaus, :heure_debut, :time
    add_column :creneaus, :heure_fin, :time
  end
end
