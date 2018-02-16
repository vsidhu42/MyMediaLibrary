class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :bookid
      t.string :title
      t.integer :theyear
      t.string :author

      t.timestamps
    end
  end
end
