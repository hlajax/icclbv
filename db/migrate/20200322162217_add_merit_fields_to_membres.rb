class AddMeritFieldsToMembres < ActiveRecord::Migration[5.2]
  def change
    add_column :membres, :sash_id, :integer
    add_column :membres, :level,   :integer, :default => 0
  end
end
