class AddScoreToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :score, :integer
  end
end
