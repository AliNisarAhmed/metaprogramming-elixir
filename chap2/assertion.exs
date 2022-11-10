defmodule Assertion do
  # {:==, [context: Elixir, import: Kernel], [5, 5]}
  defmacro assert({op, _, [lhs, rhs]}) do
    quote bind_quoted: [op: op, lhs: lhs, rhs: rhs] do
      Assertion.Test.assert(op, lhs, rhs)
    end
  end
end

defmodule Assertion.Test do
  def assert(:==, lhs, rhs) when lhs == rhs do
    IO.write(".")
  end

  def assert(:==, lhs, rhs) do
    IO.puts("""
      FAILURE:
      Expected:       #{lhs}
      to be equal to: #{rhs}
    """)
  end

  def assert(:>, lhs, rhs) when lhs > rhs do
    IO.write(".")
  end

  def assert(:>, lhs, rhs) do
    IO.puts("""
      FAILURE: 
      Expected            #{lhs}
      to be greater than: #{rhs}
    """)
  end
end
