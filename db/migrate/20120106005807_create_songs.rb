class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :songid
      t.string :name

      t.timestamps
    end
  end
end
