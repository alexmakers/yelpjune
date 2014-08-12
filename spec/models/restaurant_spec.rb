require 'rails_helper'

RSpec.describe Restaurant, :type => :model do

  it 'is valid with a unique name of > 2 characters, starting with a capital letter' do
    restaurant = Restaurant.new(name: 'Nandos')
    expect(restaurant).to have(:no).errors_on(:name)
  end
  
  it 'is not valid with a name of < 2 characters' do
    restaurant = Restaurant.new(name: 'Ab')
    expect(restaurant).to have(1).error_on(:name)
  end

  it 'is not valid if it does not start with an uppercase letter' do
    restaurant = Restaurant.new(name: 'nandos')
    expect(restaurant).to have(1).error_on(:name)
  end

  it 'is not valid if it is not unique' do
    Restaurant.create(name: 'Nandos')
    restaurant = Restaurant.new(name: 'Nandos')
    expect(restaurant).to have(1).error_on(:name)
  end

end
