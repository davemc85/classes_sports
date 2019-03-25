# class Student
#   def initialize(name, cohort)
#     @name = name
#     @cohort = cohort
#   end
#
#   def get_name
#     return @name
#   end
#
#   def get_cohort
#     return @cohort
#   end
#
#   def set_name(new_name)
#     return @name = new_name
#   end
#
#   def set_cohort(new_cohort)
#     return @cohort = new_cohort
#   end
#
#   def student_talk
#     return "I can talk!"
#   end
#
#   def say_favourite_language(language)
#     return "I love #{language}"
#   end
# end




class SportsTeam
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  def get_coach
    return @coach
  end

end
