require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')


class LibraryTest < MiniTest::Test

  def setup()
    book = {
      title: "Fever Pitch",
      rental_details: {
        student_name: "David",
        date: "01/08/2018"
      }
    }

      @library = Library.new([book])
  end

  def test_library_has_book()
    assert_equal([{
    title: "Fever Pitch",
    rental_details: {
      student_name: "David",
      date: "01/08/2018"
    }
    }], @library.get_books())
  end

  def test_can_get_book()
    book = @library.find_by_title("Fever Pitch")
    assert_equal("Fever Pitch", book[:title])
  end

  def test_can_get_rental_details()
    rental_details = @library.find_rental_details("Fever Pitch")
    assert_equal({
      student_name: "David",
      date: "01/08/2018"
    }, rental_details)
  end


end
