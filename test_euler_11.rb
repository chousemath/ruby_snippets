require_relative "euler_11"
require "test/unit"

class TestEuler11 < Test::Unit::TestCase
  def test_random
    assert_equal([2, 22, 97, 38].inject(:+), Euler11.calc_left_sum(Euler11.num_arr_2d, 0, 4))
    assert_equal([38, 15, 0, 40].inject(:+), Euler11.calc_right_sum(Euler11.num_arr_2d, 0, 4))
    assert_equal([8, 49, 81, 52].inject(:+), Euler11.calc_up_sum(Euler11.num_arr_2d, 3, 0))
    assert_equal([32, 24, 22, 52].inject(:+), Euler11.calc_down_sum(Euler11.num_arr_2d, 3, 0))
    assert_equal([47, 98, 26, 55].inject(:+), Euler11.calc_down_sum(Euler11.num_arr_2d, 5, 1))
    assert_equal([47, 31, 70, 49].inject(:+), Euler11.calc_up_sum(Euler11.num_arr_2d, 5, 1))
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
    assert_equal(0, Euler11.calc_up_sum(Euler11.num_arr_2d, 0, 19))
  end

  def test_botom_left_corner
    assert_equal(0, Euler11.calc_down_sum(Euler11.num_arr_2d, 19, 0))
    assert_equal([1, 70, 54, 71].inject(:+), Euler11.calc_right_sum(Euler11.num_arr_2d, 19, 0))
    assert_equal(0, Euler11.calc_left_sum(Euler11.num_arr_2d, 19, 0))
    assert_equal([1, 20, 20, 4].inject(:+), Euler11.calc_up_sum(Euler11.num_arr_2d, 19, 0))
  end

  def test_bottom_right_corner
    assert_equal(0, Euler11.calc_down_sum(Euler11.num_arr_2d, 19, 19))
    assert_equal(0, Euler11.calc_right_sum(Euler11.num_arr_2d, 19, 19))
    assert_equal([48, 67, 19, 89].inject(:+), Euler11.calc_left_sum(Euler11.num_arr_2d, 19, 19))
    assert_equal([48, 54, 16, 36].inject(:+), Euler11.calc_up_sum(Euler11.num_arr_2d, 19, 19))
  end

  def test_left_side
    assert_equal(0, Euler11.calc_left_sum(Euler11.num_arr_2d, 5, 0))
    assert_equal(0, Euler11.calc_left_sum(Euler11.num_arr_2d, 5, 1))
    assert_equal(0, Euler11.calc_left_sum(Euler11.num_arr_2d, 5, 2))
    assert_equal([60, 32, 47, 24].inject(:+), Euler11.calc_left_sum(Euler11.num_arr_2d, 5, 3))
  end

  def test_right_side
    assert_equal(0, Euler11.calc_right_sum(Euler11.num_arr_2d, 5, 19))
    assert_equal(0, Euler11.calc_right_sum(Euler11.num_arr_2d, 5, 18))
    assert_equal(0, Euler11.calc_right_sum(Euler11.num_arr_2d, 5, 17))
    assert_equal([35, 17, 12, 50].inject(:+), Euler11.calc_right_sum(Euler11.num_arr_2d, 5, 16))
  end

  def test_top_side
    assert_equal(0, Euler11.calc_up_sum(Euler11.num_arr_2d, 0, 5))
    assert_equal(0, Euler11.calc_up_sum(Euler11.num_arr_2d, 1, 5))
    assert_equal(0, Euler11.calc_up_sum(Euler11.num_arr_2d, 2, 5))
    assert_equal([15, 81, 79, 60].inject(:+), Euler11.calc_up_sum(Euler11.num_arr_2d, 3, 5))
  end

  def test_down_side
    assert_equal(0, Euler11.calc_down_sum(Euler11.num_arr_2d, 19, 5))
    assert_equal(0, Euler11.calc_down_sum(Euler11.num_arr_2d, 18, 5))
    assert_equal(0, Euler11.calc_down_sum(Euler11.num_arr_2d, 17, 5))
    assert_equal([51, 31, 30, 25].inject(:+), Euler11.calc_down_sum(Euler11.num_arr_2d, 16, 5))
  end

  def test_max_of_four
    assert_equal(10, Euler11.max_of_four([1, 2, 3, 10]))
    assert_equal(10, Euler11.max_of_four([10, 4, 7, 9]))
  end
end
