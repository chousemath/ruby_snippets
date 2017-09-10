require_relative "euler_11"
require "test/unit"

class TestEuler11 < Test::Unit::TestCase

  def test_random
    assert_equal([2, 22, 97, 38].inject(:+), Euler11.calc_left_sum(Euler11.num_arr_2d, 0, 4))
    assert_equal([38, 15, 0, 40].inject(:+), Euler11.calc_right_sum(Euler11.num_arr_2d, 0, 4))
    assert_equal([8, 49, 81, 52].inject(:+), Euler11.calc_up_sum(Euler11.num_arr_2d, 3, 0))
    assert_equal([32, 24, 22, 52].inject(:+), Euler11.calc_down_sum(Euler11.num_arr_2d, 3, 0))
  end

  def test_top_left_corner
    assert_equal([8, 49, 81, 52].inject(:+), Euler11.calc_down_sum(Euler11.num_arr_2d, 0, 0))
    assert_equal([8, 2, 22, 97].inject(:+), Euler11.calc_right_sum(Euler11.num_arr_2d, 0, 0))
    assert_equal(0, Euler11.calc_left_sum(Euler11.num_arr_2d, 0, 0))
    assert_equal(0, Euler11.calc_up_sum(Euler11.num_arr_2d, 0, 0))
  end

  def test_top_right_corner
    assert_equal([8, 0, 65, 91].inject(:+), Euler11.calc_down_sum(Euler11.num_arr_2d, 0, 19))
    assert_equal(0, Euler11.calc_right_sum(Euler11.num_arr_2d, 0, 19))
    assert_equal([8, 91, 77, 50].inject(:+), Euler11.calc_left_sum(Euler11.num_arr_2d, 0, 19))
  end
end
