require 'simplecov'
SimpleCov.start

require 'quick_sort'

RSpec.describe 'quick_sort.rb' do
  describe 'quick_sort' do

    it 'should be initialized' do
      expect { [].quick_sort }.not_to raise_error
    end

    it 'should handle an empty array' do
      empty_array = []
      sorted_array = empty_array.quick_sort
      expect(sorted_array).to match_array([])
    end

    it 'should sort numbers ascending' do
      unsorted_array = [41,2,56]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array[0] <= sorted_array[1]) .to be true
      expect(sorted_array[1] <= sorted_array[2]) .to be true
    end

    it 'should not sort numbers descending' do
      unsorted_array = [34,5,17]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array[0] >= sorted_array[1]) .to be false
      expect(sorted_array[1] >= sorted_array[2]) .to be false
    end

    it 'should handle an array with "0" number' do
      unsorted_array = [67,0,89]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([0,67,89])
    end

    it 'should handle an array with single element' do
      unsorted_array = [2]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([2])
    end

    it 'should handle two elements in order' do
      unsorted_array = [13,27]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([13,27])
    end

    it 'should sort two elements' do
      unsorted_array = [46,21]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([21,46])
    end

    it 'should handle sorted array' do
      unsorted_array = [4,23,52,77,256]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array(unsorted_array)
    end

    it 'should sort positive numbers' do
      unsorted_array = [114,12,37]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([12,37,114])
    end

    it 'should sort negative numbers' do
      unsorted_array = [-87,-3,-9]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([-87,-9,-3])
    end

    it 'should sort both negative and positive numbers' do
      unsorted_array = [-87,34,-9]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([-87,-9,34])
    end

    it 'should sort repeated numbers' do
      unsorted_array = [10,65,5,65,8,5]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([5,5,8,10,65,65])
    end

    it 'should handle array with only one unique number' do
      unsorted_array = [16,16,16,16,16,16]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([16,16,16,16,16,16])
    end

    it 'should sort positive floating point numbers' do
      unsorted_array = [7.34,2.4]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([2.4,7.34])
    end

    it 'should sort negative floating point numbers' do
      unsorted_array = [-13.9,-82.6,-54.98]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([-82.6,-54.98,-13.9])
    end

    it 'should sort array with both floating point numbers and integers' do
      unsorted_array = [3.98,78.1,6,8.4,0]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([0,3.98,6,8.4,78.1])
    end

    it 'should sort array sorted descending' do
      unsorted_array = [18,17,16,15,14,13]
      sorted_array = unsorted_array.quick_sort
      expect(sorted_array).to match_array([13,14,15,16,17,18])
    end
  end
end
