defmodule Start do
  import GenServer
  def init(args) do
    {:ok, []}
  end

  def handle_call({:pop}, _from, []) do
    {:reply, nil, []}
  end
  def handle_call({:pop}, _from, [h | t]) do
     {:reply, h, t}
  end

  def handle_cast({:push, item}, state) do
    {:noreply, [item | state]}
  end
end
 {:ok, pid} = GenServer.start_link(Start, [:hello])
 

 #{:ok, pid2} = GenServer.start_link(Start, [:hello])

 GenServer.call(pid, {:pop})

 GenServer.cast(pid, {:push, :world})

 GenServer.call(pid, {:pop})
