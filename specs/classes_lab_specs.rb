require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab.rb')

class StudentTest < MiniTest::Test

  def test_name_getter
    student = Student.new("David", "G12")
    assert_equal("David", student.get_name)
  end
  #
  def test_name_setter
    student = Student.new("David", "G12")
    student.set_name("John")
    assert_equal("John", student.get_name)
  end

  def test_cohort
    student = Student.new("David", "G12")
    assert_equal("G12", student.get_cohort)
  end


  def test_set_cohort
    student = Student.new("David", "G12")
    student.set_cohort("G11")
    assert_equal("G11", student.get_cohort)
  end

end
