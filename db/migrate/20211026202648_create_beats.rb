class CreateBeats < ActiveRecord::Migration[6.1]
  def change
    create_table :beats do |t|
      t.string :artist
      t.string :song
      t.string :producer
      t.string :media
      t.timestamps
    end
  end
end
