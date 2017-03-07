class AddHeightToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :height, :string
    add_column :players, :weight, :number
    add_column :players, :year, :string
  end
end
