class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.integer :number_guests
      t.float :price
      t.references :user, :family

      t.timestamps
    end
  end
end
