class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :description
      t.string :type
      t.string :city
      t.string :address
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
