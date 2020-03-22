class AddTelephoneAndSexeIdToMembre < ActiveRecord::Migration[5.2]
  def change
    add_column :membres, :telephone, :string
    add_column :membres, :sexe_id, :integer
  end
end
