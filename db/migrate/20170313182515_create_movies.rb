class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :content
      t.datetime :publishdate
      
      t.timestamps
    end
  end
end
