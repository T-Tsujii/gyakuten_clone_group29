class CreateReads < ActiveRecord::Migration[6.0]
  def change
    create_table :reads do |t|
      t.references :user, null: false, foreign_key: true
      t.references :text_book, null: false, foreign_key: true

      t.timestamps
    end
    add_index :reads, [:user_id, :text_book_id], unique: true
  end
end
