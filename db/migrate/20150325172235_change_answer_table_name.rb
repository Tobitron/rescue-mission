class ChangeAnswerTableName < ActiveRecord::Migration
  def change
    rename_table :answers_tables, :answers
  end
end
