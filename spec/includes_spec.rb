require 'spec_helper'
require 'active_record'

class TestClass < ActiveRecord::Base
  include Geocoder::Store::ActiveRecord
end

describe GeoCalculator do
  it 'makes sure you can mix in the methods' do
    expect(TestClass).to respond_to(:near)
  end
end
