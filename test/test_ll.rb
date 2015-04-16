require 'nss'

class TestLL < MiniTest::Unit::TestCase
  def test_with_no_arguments
    output = `ruby ll.rb`
    expected = '* -> nil'
    assert_equal expected, output
  end

  def test_with_one_argument
    output = `ruby ll.rb foo`
    expected = '* -> "foo" -> nil'
    assert_equal expected, output
  end

  def test_with_two_arguments
    output = `ruby ll.rb foo bar`
    expected = '* -> "foo" -> "bar" -> nil'
    assert_equal expected, output
  end

  def test_with_three_arguments
    output = `ruby ll.rb foo bar cat`
    expected = '* -> "foo" -> "bar" -> "cat" -> nil'
    assert_equal expected, output
  end

  def test_with_many_arguments
    output = `ruby ll.rb foo bar cat zoo giraffe golf`
    expected = '* -> "foo" -> "bar" -> "cat" -> "zoo" -> "giraffe" -> "golf" -> nil'
    assert_equal expected, output
  end

  # This is an idea of where we could go with ll.rb
  def test_with_get_and_delete
    skip
    output = `ruby ll.rb +foo +bar +cat -foo +zoo +giraffe +golf`
    expected = '
* -> nil
* -> "foo" -> nil
* -> "foo" -> "bar" ->  nil
* -> "foo" -> "bar" -> "cat" -> nil
* -> "bar" -> "cat" -> nil
* -> "bar" -> "cat" -> "zoo" -> nil
* -> "bar" -> "cat" -> "zoo" -> "giraffe" -> nil
* -> "bar" -> "cat" -> "zoo" -> "giraffe" -> "golf" -> nil
'
    assert_equal expected, output
  end
end
