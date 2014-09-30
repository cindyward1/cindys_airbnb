class AddHasPhotoToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :has_photo, :boolean, default: false
  end
end
