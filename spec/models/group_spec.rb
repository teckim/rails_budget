require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'Name attribute should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Name attribute size should be more than 3 characters' do
    subject.name = '1'
    expect(subject).to_not be_valid
  end

  it 'Name attribute size should be less than 50 characters' do
    name = ''
    60.times { |i| name += i.to_s } # * 60 characters
    subject.name = name
    expect(subject).to_not be_valid
  end
end
