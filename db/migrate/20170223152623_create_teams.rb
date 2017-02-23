class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name, index: true, null: false, limit: 191
      t.integer :rank, null: false
      t.string :conference, null: false

      t.timestamps null: false
    end
  end
end
