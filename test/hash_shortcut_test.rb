require_relative "test_helper"

class HashShortcutTest < Minitest::Test
  def test_it_throws_argument_error_with_no_args
    assert_raises ArgumentError do
      [].to_proc
    end
  end

  def test_it_throws_argument_error_with_too_many_args
    assert_raises ArgumentError do
      [:a, :b].to_proc
    end
  end

  def test_it_gets_hash_values
    data = [{ abc: 7, ab: 99 }, { abc: 10, def: 123 }, { abc: 3, "abc" => 4 }]
    values = data.map &[:abc]
    assert_equal [7, 10, 3], values
  end
end
