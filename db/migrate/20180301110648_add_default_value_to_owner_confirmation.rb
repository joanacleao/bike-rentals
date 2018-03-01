class AddDefaultValueToOwnerConfirmation < ActiveRecord::Migration[5.1]
  def change
    change_column_default :bookings, :owner_confirmation, false
  end
end
