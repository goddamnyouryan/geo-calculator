require 'spec_helper'

class TestClass < ActiveRecord::Base
  include Geocoder::Store::ActiveRecord

  def self.geocoder_options
    {
      latitude: 'latitude',
      longitude: 'longitude',
      units: :mi
    }
  end
end

describe GeoCalculator do
  let(:latlng) { [34.095809, -118.287558] }
  it 'makes sure you can mix in the methods' do
    expect(TestClass).to respond_to(:near)
    expect(TestClass.near(latlng)).to be_a(Array)
  end
end
