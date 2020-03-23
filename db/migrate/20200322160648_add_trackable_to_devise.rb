class AddTrackableToDevise < ActiveRecord::Migration[5.2]
    def up
    add_column :membres, :sign_in_count, :integer, default: 0, null: false
    add_column :membres, :current_sign_in_at, :datetime
    add_column :membres, :last_sign_in_at, :datetime
    add_column :membres, :current_sign_in_ip, :inet
    add_column :membres, :last_sign_in_ip, :inet
  end

  def down
    remove_columns :membres, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip
  end
end