class CreateSongratings < ActiveRecord::Migration[5.1]
  def change
    create_table :songratings do |t|
      t.integer :songratingid
      t.integer :thesongid
      t.decimal :rating
      t.string :name

      t.timestamps
    end
  end
end
