require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')


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

  # def test_add_player
  #   sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
  #   sports_team.players.push("Davis")
  #   assert_equal(3, sports_team.players.length)
  # end

  def test_can_add_player
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard", 0)
    sports_team.add_player("Davis")
    assert_equal(3, sports_team.get_player_count)
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
