class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def get_student_name
    return @student_name
  end

  def get_cohort
    return @cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk(words)
    return words
  end

  def fav_language(fav_lang)
    return "I love "+ fav_lang
  end

end



class Team

  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_player(player)
    players << player
  end

  def check_if_player(player)
    if @players.include?(player)
      return true
    else
      return false
    end
  end

end# homework_week2_day1 lab_spec.rb
