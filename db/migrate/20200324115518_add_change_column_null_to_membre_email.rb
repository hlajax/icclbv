class AddChangeColumnNullToMembreEmail < ActiveRecord::Migration[5.2]
    def self.up
    change_column :membres, :email, :string, :null => true 
  end

  def self.down
    change_column :membres, :email, :string, :null => false 
  end
end
