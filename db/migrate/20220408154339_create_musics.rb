class CreateMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :musics do |t|
      t.integer :release_id
      t.string :music_title
      t.string :lyrics
      t.string :composition

      t.timestamps
    end
  end
end
