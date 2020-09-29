class CreateTextBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :text_books do |t|
      t.string :genre
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
