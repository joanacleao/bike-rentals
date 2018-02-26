class RemoveTypeFromBikes < ActiveRecord::Migration[5.1]
  def change
    remove_column :bikes, :type, :string
  end
end
