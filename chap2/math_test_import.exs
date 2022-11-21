defmodule MathTest do
  use Assertion

  def run do
    assert 5 == 5
    assert 2 > 0
    assert 1 > 2
    assert 10 * 10 == 100
  end
end
