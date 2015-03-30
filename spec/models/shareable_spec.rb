require 'rails_helper'

RSpec.describe Shareable, :type => :model do
  #valid
  it 'is valid with title and link' do
    new_shareable = Shareable.new(title:'this is cool', link:'wow.com')
    expect(new_shareable).to be_valid
  end

  #invalid
  it 'is invalid with no title' do
    new_shareable = Shareable.new(title:nil,
    link:'wow.com')
  end

  it 'is invalid with no link' do
    new_shareable = Shareable.new(title:'something',
    link:nil)
  end

end
