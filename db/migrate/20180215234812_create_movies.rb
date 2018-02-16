class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.integer :movieid
      t.string :title
      t.integer :theyear

      t.timestamps
    end
  end
end
