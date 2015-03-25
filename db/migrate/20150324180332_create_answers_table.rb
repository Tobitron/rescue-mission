class CreateAnswersTable < ActiveRecord::Migration
  def change
    create_table :answers_tables do |t|
      t.integer :user_id, null: false
      t.integer :question_id, null: false
      t.string :description, null: false

      t.timestamp
    end
  end
end
