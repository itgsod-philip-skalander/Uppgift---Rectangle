require 'rspec'
require_relative '../lib/rectangle.rb'

describe Rectangle do

  describe 'creating a new rectangle' do

    it 'should take raise ArgumentError with correct error message if called without width or height' do
      expect{ Rectangle.new(width: 12)}.to raise_error ArgumentError
      expect{ Rectangle.new(height: 12)}.to raise_error ArgumentError
    end

    it 'should take width and height as arguments' do
      expect{ Rectangle.new(width: 10, height: 20)}.not_to raise_error
    end

    it 'should not accept negative or zero values' do
      expect{ Rectangle.new(width: 0, height: 10)}.to raise_error ArgumentError, 'arguments must be positive'
      expect{ Rectangle.new(width: 5, height: -10)}.to raise_error ArgumentError, 'arguments must be positive'
    end

    it 'should return a new rectangle' do
      rect = Rectangle.new(width: 10, height: 20)
      expect( rect ).to be_a Rectangle
    end

  end

  describe 'area' do

    it 'should calculate the area' do
      rect = Rectangle.new(width: 30, height: 40)
      expect( rect.area ).to eq 1200
    end

  end

  describe 'circumference' do

    it 'should calculate the circumference' do
      rect = Rectangle.new(width: 30, height: 40)
      expect( rect.circumference ).to eq 140
    end

  end

end
