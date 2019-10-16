defmodule Gen do
  use GenServer
  def init(list) do
    {:ok, list}
  end
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head * 2, tail}
  end
  def handle_cast({:push, item}, state) do
    {:reply, [head | tail]}
  end
end
