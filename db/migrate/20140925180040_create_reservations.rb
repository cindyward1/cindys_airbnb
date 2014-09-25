class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :rental_id
      t.date :start_date
      t.date :end_date
      t.integer :number_guests
      t.float :reservation_total
      t.timestamps
    end
  end
end
