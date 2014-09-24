class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_text
      t.integer :rating
      t.references :opinions_about, polymorphic: true
      t.timestamps
    end
  end
end
