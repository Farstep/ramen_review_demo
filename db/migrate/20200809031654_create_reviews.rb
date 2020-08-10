class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :ramen_shop, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
