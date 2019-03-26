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

  def test_can_add_book()
    @library.add_book("Colour_of_magic")
    book = @library.find_by_title("Colour_of_magic")
    assert_equal({title: "Colour_of_magic",
      rental_details: {
        student_name: "",
        date: ""
        }}, book)
  end

  def test_can_rent_book()
    @library.rent_book("Fever Pitch", "Jeff", "26/03/19")
    rental_details = @library.find_rental_details("Fever Pitch")
    assert_equal({student_name: "Jeff", date: "26/03/19"}, rental_details)
  end


end
