require 'rails_helper'

RSpec.describe Beer, type: :model do

  it { is_expected.to have_many :ballots }

  it "is invalid without a name" do
    expect(described_class.new.valid?).to be false
  end

  it "is valid with a name at least three characters long" do
    expect(described_class.new(brand: "Keg").valid?).to be true
  end

  it "is invalid with a name less than three characters long" do
    expect(described_class.new(brand: "No").valid?).to be false
  end
end