class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :id
      t.string :title
      t.text :detail

      t.timestamps
    end
  end
end
