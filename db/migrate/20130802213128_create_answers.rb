class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :is_correct, :default => false
      t.integer :question_id

      t.timestamps
    end
  end
end
