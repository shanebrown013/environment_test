# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K Rowling', price: 20.00, published_date: '1997/06/26')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a Title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without an Author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a Price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  it 'is not valid without a Published Date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end

end
