require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(name: 'Tom') }

  it 'Name attribute should be present' do
    subject.name = nil

    expect(subject).to_not be_valid
  end

  it 'Name attribute size should be more than 3 characters' do
    subject.name = '1'

    expect(subject).to_not be_valid
  end

  it 'Name attribute size should be less than 25 characters' do
    name = ''
    30.times { |i| name += i.to_s } # * 30 characters
    subject.name = name

    expect(subject).to_not be_valid
  end
end
