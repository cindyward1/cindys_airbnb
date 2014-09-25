require "spec_helper"

describe Comment do
  it { should belong_to :opinions_about }
  it { should validate_presence_of :comment_text}
end
