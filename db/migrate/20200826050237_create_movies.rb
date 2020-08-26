class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :url
      t.text :content

      t.timestamps
    end
  end
end
