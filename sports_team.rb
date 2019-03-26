class SportsTeam

  attr_accessor :team_name, :players, :coach, :points


  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end


  def get_player_count()
    return @players.size()
  end

  def add_player(player)
    @players << player
  end


  # def add_player(player)
  #   @players << player
  #   return sports_team[:players].length
  # end

  def find_player(search_player)
    for name in @players
      if name == search_player
        return true
      end
    end
  end

  def match_result(result)
    if result == "Win"
      @points += 3
    elsif result == "Draw"
      @points += 1
    else
      @points += 0
    end
  end
end
