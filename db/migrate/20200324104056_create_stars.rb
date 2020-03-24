class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
