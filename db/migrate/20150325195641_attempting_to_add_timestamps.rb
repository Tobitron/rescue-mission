class AttemptingToAddTimestamps < ActiveRecord::Migration
  def change
      change_table :answers do |t|
      t.timestamps
    end
  end
end
