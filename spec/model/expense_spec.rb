require 'rails_helper'

RSpec.describe Expense, type: :model do
  before :each do
    @user = User.new(name: 'Richard', email: 'richard1@gmail.com', password: '123456')
    @category = Category.new(name: 'Entertainment',
                             icon: 'https://thumbs.dreamstime.com/z/97077851.jpg', user: @user)
    @expense = @category.expenses.new({ name: 'Clubbing', amount: 20, user: @user })
  end

  it 'name should be valid ' do
    expect(@expense).to be_valid
  end

  it 'name should be present' do
    @expense.name = nil
    expect(@expense).to_not be_valid
  end

  it 'amount should be present' do
    @expense.amount = nil
    expect(@expense).to_not be_valid
  end
end
