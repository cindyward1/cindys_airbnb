class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type, null: false, default: "Renter"
      t.string :username, null: false, default: ""
      t.date :date_joined
      t.timestamps
    end
  end
end
