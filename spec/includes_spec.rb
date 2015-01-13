require 'spec_helper'

class TestClass
  extend GeoCalculator
end

describe GeoCalculator do

  it 'makes sure you can mix in the methods' do
    expect(TestClass).to respond_to(:near)
  end
end
