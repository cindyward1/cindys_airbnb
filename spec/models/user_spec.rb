require "spec_helper"

describe User do
  it { should have_many :comments }
  it { should validate_presence_of :username}
  it { should validate_uniqueness_of :username }
  it { should ensure_length_of(:username).is_at_least(8) }
  it { should ensure_length_of(:username).is_at_most(32) }
  it { should validate_presence_of :email }
  it { should allow_value("email@address.foo").for(:email) }
  it { should_not allow_value("foo").for(:email) }
  it { should ensure_length_of(:email).is_at_least(5) }
  it { should ensure_length_of(:email).is_at_most(50) }
  it { should validate_presence_of :date_joined }
end
