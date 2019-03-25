class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(new_name)
    return @name = new_name
  end

  def set_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def student_talk
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end
end




class SportsTeam

  attr_accessor :team_name, :players, :coach, :points


  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(player)
    @players << player
    return sports_team[:players].length
  end

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




class Library
  def initialize
    @title
    @rental_details

end
