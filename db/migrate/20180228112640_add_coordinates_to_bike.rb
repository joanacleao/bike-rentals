class AddCoordinatesToBike < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :latitude, :float
    add_column :bikes, :longitude, :float
  end
end
