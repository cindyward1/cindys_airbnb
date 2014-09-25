class AddRatingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rating, :float
    add_column :users, :number_ratings, :integer
  end
end
