require "spec_helper"

describe Reservation do
  it { should belong_to :renter }
  it { should belong_to :rental }
  it { should validate_presence_of :start_date }
  it { should validate_presence_of :end_date }
end
