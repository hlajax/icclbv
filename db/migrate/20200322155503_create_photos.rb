class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :titre
      t.string :slug

      t.timestamps
    end
    add_index :photos, :slug, unique: true
  end
end
