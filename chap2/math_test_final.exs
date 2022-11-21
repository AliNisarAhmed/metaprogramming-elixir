defmodule MathTest do
  use Assertion

  test "integers can be added and subtracted" do
    assert 1 + 1 == 2
    assert 4 - 2 == 2
  end

  test "integers can be multiplied and divided" do
    assert 2 * 8 == 16
    assert 18 / 2 > 9
  end
end
