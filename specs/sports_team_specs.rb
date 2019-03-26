require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')


class SportsTeamTest < MiniTest::Test

  def test_get_team_name
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    assert_equal("Rangers", sports_team.team_name)
  end

  def test_get_players
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    assert_equal(["Morelos", "Defoe"], sports_team.players)
  end

  def test_get_coach
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    assert_equal("Gerrard", sports_team.coach)
  end

  def test_points_start_0
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    assert_equal(0, sports_team.points)
  end

  def test_coach_setter
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    sports_team.coach = "Smith"
    assert_equal("Smith", sports_team.coach)
  end

  # def test_add_player
  #   sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
  #   sports_team.players.push("Davis")
  #   assert_equal(3, sports_team.players.length)
  # end

  def test_can_add_player
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    sports_team.add_player("Davis")
    assert_equal(3, sports_team.get_player_count)
  end

  def test_find_player
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    player = sports_team.find_player("Defoe")
    assert_equal(true, player)
  end

  def test_match_result_win
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    result = sports_team.match_result("Win")
    assert_equal(3, result)
  end

  def test_match_result_draw
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    result = sports_team.match_result("Draw")
    assert_equal(1, result)
  end

  def test_match_result_lose
    sports_team = SportsTeam.new("Rangers", ["Morelos", "Defoe"], "Gerrard")
    result = sports_team.match_result("Lose")
    assert_equal(0, result)
  end

end
