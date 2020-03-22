class CreateCreneaus < ActiveRecord::Migration[5.2]
  def change
    create_table :creneaus do |t|
      t.string :titre

      t.timestamps
    end
  end
end
