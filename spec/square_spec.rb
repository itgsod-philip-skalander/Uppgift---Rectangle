require 'rspec'
require_relative '../lib/rectangle.rb'

describe Square do

  describe 'creating a new square' do

    it 'should take raise ArgumentError with correct error message if called with no argument' do
      expect{ Square.new()}.to raise_error ArgumentError
    end

    it 'should take side as argument' do
      expect{ Square.new(side: 10)}.not_to raise_error
    end

    it 'should not accept negative or zero values' do
      expect{ Square.new(side: 0)}.to raise_error ArgumentError, 'arguments must be positive'
      expect{ Square.new(side: -5)}.to raise_error ArgumentError, 'arguments must be positive'
    end

    it 'should return a new square' do
      square = Square.new(side: 10)
      expect( square ).to be_a Square
    end

    it 'should inherit from Rectangle' do
      square = Square.new(side: 10)
      expect( square ).to be_a Rectangle
    end

  end

  describe 'area' do

    it 'should calculate the area' do
      square = Square.new(side: 30)
      expect( square.area ).to eq 900
    end

  end

  describe 'circumference' do

    it 'should calculate the circumference' do
      square = Square.new(side: 45)
      expect( square.circumference ).to eq 180
    end

  end

end
