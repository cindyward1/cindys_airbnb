require "spec_helper"

describe Rental do
  it { should belong_to :landlord }
  it { should have_many :reservations }
  it { should have_many :renters }
  it { should have_many :comments }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :base_rate }
end
