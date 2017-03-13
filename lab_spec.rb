require("minitest/autorun")
require_relative("lab.rb")
require("minitest/rg")

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Michael", 11)
  end

  def test_get_student_name
    assert_equal("Michael", @student.get_student_name)
  end

  def test_get_cohort
    assert_equal(11, @student.get_cohort)
  end

  def test_set_student_name
    @student.set_student_name("Rhys")
    assert_equal("Rhys", @student.get_student_name)
  end

  def test_set_cohort
    @student.set_cohort(12)
    assert_equal(12, @student.get_cohort)
  end

  def test_student_talk
    talking = @student.student_talk("Hello, I can talk")
    assert_equal("Hello, I can talk", talking)
  end

  def test_fav_language
    fav_language = @student.fav_language("Ruby")
    assert_equal("I love Ruby", fav_language)
  end

end



class TestTeam < MiniTest::Test

  def setup
    players_array = ["Michael", "Greg", "Chris"]
    @team = Team.new("Ratho United", players_array, "Dave")
  end

  def test_get_team_name
    assert_equal("Ratho United", @team.team_name)
  end

  def test_get_players
    assert_equal(["Michael", "Greg", "Chris"], @team.players)
  end

  def test_get_coach
    assert_equal("Dave", @team.coach)
  end

  def test_set_coach
    @team.coach = "Aidan"
    assert_equal("Aidan", @team.coach)
  end

  def test_add_player
    @team.add_player("Fin")
    assert_equal(4, @team.players.length())
  end

  def test_check_if_player
    assert_equal(true, @team.players.include?("Greg"))
  end

end