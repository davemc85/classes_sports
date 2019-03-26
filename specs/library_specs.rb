require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')


class LibraryTest < MiniTest::Test
  def test_book_name
    book = Library.new("Fever Pitch", RentalDetails.new("David", "01/08/2018"))




end
