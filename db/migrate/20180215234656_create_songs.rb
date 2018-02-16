class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.integer :songid
      t.string :title
      t.integer :theyear
      t.string :artist
      t.string :album

      t.timestamps
    end
  end
end
