require 'test/unit'

class Brokened
  def uh_oh
    'I needs fixing'
  end
end

class BrokenedTest < Test::Unit::TestCase
  def test_uh_oh
    actual = Brokened.new
    assert_equal("I'm all better!", actual.uh_oh)
  end
end