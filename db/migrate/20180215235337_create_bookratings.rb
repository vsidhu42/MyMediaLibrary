class CreateBookratings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookratings do |t|
      t.integer :bookratingid
      t.integer :thebookid
      t.decimal :rating
      t.string :name

      t.timestamps
    end
  end
end
