class CreateMovieratings < ActiveRecord::Migration[5.1]
  def change
    create_table :movieratings do |t|
      t.integer :movieratingid
      t.integer :themovieid
      t.decimal :rating
      t.string :name

      t.timestamps
    end
  end
end
