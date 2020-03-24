class CreateStatuts < ActiveRecord::Migration[5.2]
  def change
    create_table :statuts do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
