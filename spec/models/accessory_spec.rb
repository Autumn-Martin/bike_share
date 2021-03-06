require 'rails_helper'

describe Accessory, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :description}
    it {should validate_presence_of :price}
    it {should validate_presence_of :image}
  end
  describe 'relationships' do

  end
end
