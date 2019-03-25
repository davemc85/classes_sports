require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab.rb')

# class StudentTest < MiniTest::Test
#
#   def test_name_getter
#     student = Student.new("David", "G12")
#     assert_equal("David", student.get_name)
#   end
#   #
#   def test_name_setter
#     student = Student.new("David", "G12")
#     student.set_name("John")
#     assert_equal("John", student.get_name)
#   end
#
#   def test_cohort
#     student = Student.new("David", "G12")
#     assert_equal("G12", student.get_cohort)
#   end
#
#
#   def test_set_cohort
#     student = Student.new("David", "G12")
#     student.set_cohort("G11")
#     assert_equal("G11", student.get_cohort)
#   end
#
#   def test_student_talk
#     student = Student.new("David", "G12")
#     assert_equal("I can talk!", student.student_talk)
#   end
#
#   def test_fav_programming_language
#     student = Student.new("David", "G12")
#     student.say_favourite_language("Ruby")
#     assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
#   end
#
#
# end


class SportsTeamTest < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    assert_equal("Rangers", sports_team.get_team_name)
  end

  def test_get_players
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    assert_equal(["Morelos", "Defoe"], sports_team.get_players)
  end

  def test_get_coach
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    assert_equal("Gerrard", sports_team.get_coach)
  end
end


# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and
#
# setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
