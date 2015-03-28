class AddFeaturedToAnswers < ActiveRecord::Migration
  def change
    add_column(:answers, :featured, :boolean, default: false)
  end
end
