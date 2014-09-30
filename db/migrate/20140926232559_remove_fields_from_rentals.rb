class RemoveFieldsFromRentals < ActiveRecord::Migration
  def change
    remove_column :rentals, :cancellation_policy
    remove_column :rentals, :amenities_list
  end
end
