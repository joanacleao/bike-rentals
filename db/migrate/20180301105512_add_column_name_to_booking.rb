class AddColumnNameToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :owner_confirmation, :boolean, default: false
  end
end
