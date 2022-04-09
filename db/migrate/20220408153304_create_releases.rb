class CreateReleases < ActiveRecord::Migration[6.1]
  def change
    create_table :releases do |t|
      t.string :sub_title
      t.string :main_title
      t.string :release_day
      t.string :detail

      t.timestamps
    end
  end
end
