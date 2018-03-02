class AddBikeToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :bike, foreign_key: true
  end
end
