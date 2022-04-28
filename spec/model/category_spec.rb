# spec/models/category_spec.rb

require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.new(name: 'Richard', email: 'rtonata@gmail.com', password: '123456')
    @category = Category.new(name: 'Groceries',
                             icon: 'https://thumbs.dreamstime.com/z/97077851.jpg', user: @user)
  end

  it 'name should be valid ' do
    expect(@category).to be_valid
  end

  it 'name should be present' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'icon should be present' do
    @category.icon = nil
    expect(@category).to_not be_valid
  end
end
