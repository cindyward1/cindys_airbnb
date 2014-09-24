class Comment < ActiveRecord::Base
  belongs_to :opinions_about, :polymorphic => true
  validates :comment_text, :presence => true, :multiline => true, on: :create
end
