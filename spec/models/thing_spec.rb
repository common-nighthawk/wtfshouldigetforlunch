require 'spec_helper'

RSpec.describe Thing, :type => :model do
  it 'works correctly' do
    Thing.create!(first_attr: 1)

    expect(Thing.first.first_attr).to eq(1)
  end
end
