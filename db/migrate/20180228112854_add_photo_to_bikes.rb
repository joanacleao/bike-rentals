class AddPhotoToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :photo, :string
  end
end
