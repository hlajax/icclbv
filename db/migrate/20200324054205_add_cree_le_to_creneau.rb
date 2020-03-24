class AddCreeLeToCreneau < ActiveRecord::Migration[5.2]
  def change
    add_column :creneaus, :cree_le, :datetime
  end
end
