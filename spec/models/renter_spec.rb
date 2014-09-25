require "spec_helper"

describe Renter do
  it { should have_many :reservations }
  it { should have_many :rentals }
end
