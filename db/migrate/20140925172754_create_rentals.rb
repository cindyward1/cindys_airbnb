class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.string :rental_type
      t.string :city
      t.string :state
      t.integer :number_bedrooms
      t.integer :number_beds
      t.integer :number_bathrooms
      t.integer :max_number_guests
      t.float :base_rate
      t.float :extra_guest_rate
      t.integer :minimum_days_stay
      t.float :rating
      t.integer :number_ratings
      t.string :cancellation_policy
      t.string :description
      t.string :amenities_list
      t.string :the_photo_file_name
      t.string :the_photo_content_type
      t.integer :the_photo_file_size
      t.datetime :the_photo_updated_at
      t.timestamps
    end
  end
end
