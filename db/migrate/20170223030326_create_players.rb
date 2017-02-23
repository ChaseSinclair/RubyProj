class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
	  t.string :name, index: true, null: false, limit: 191
      t.string :position, null: false
      t.integer :number, null: false

      t.timestamps null: false
    end
  end
end
