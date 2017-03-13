class CreateVideoGames < ActiveRecord::Migration[5.0]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :content
      t.datetime :publishdate

      t.timestamps
    end
  end
end
