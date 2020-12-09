class AddImageToTextBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :text_books, :image, :string
  end
end
