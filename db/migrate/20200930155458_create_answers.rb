class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.integer :id
      t.integer :question_id
      t.text :content

      t.timestamps
    end
  end
end
