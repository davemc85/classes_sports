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

  def test_student_talk
    student = Student.new("David", "G12")
    assert_equal("I can talk!", student.student_talk)
  end

  def test_fav_programming_language
    student = Student.new("David", "G12")
    student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end


end


class SportsTeamTest < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    assert_equal("Rangers", sports_team.team_name)
  end

  def test_get_players
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    assert_equal(["Morelos", "Defoe"], sports_team.players)
  end

  def test_get_coach
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    assert_equal("Gerrard", sports_team.coach)
  end


  def test_coach_setter
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    sports_team.coach = "Smith"
    assert_equal("Smith", sports_team.coach)
  end

  def test_add_player
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    sports_team.players.push("Davis")
    assert_equal(3, sports_team.players.length)
  end

  def test_find_player
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    player = sports_team.find_player("Defoe")
    assert_equal(true, player)
  end

  def test_match_result
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    result = sports_team.match_result("Win")
    assert_equal(3, result)
  end

end



class LibraryTest < MiniTest::Test





end
