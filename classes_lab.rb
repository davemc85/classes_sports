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
