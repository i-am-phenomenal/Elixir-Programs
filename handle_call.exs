defmodule Aditya do
  use GenServer
    def start_link do
    GenServer.start_link(Aditya, [])
    end


    def init(initialdata) do
      data = %{:data => initialdata}
      {:ok, data}
    end

    def getmydata(process_id) do
      GenServer.call(process_id, {:getthedata})
    end

    def setthedata(process_id, newdata) do
      GenServer.call(process_id, {:setthedata, new_data})
    end

    def handle_call({:getthedata}, _from, my_state) do
      currentdata = Map.get(my_state, :data)
      {:reply, currentdata, my_state}
    end

    def handle_call({:setthedata, thenewdata}, _from, my_state) do
      new_state = Map.put(my_state, :data, thenewdata)
      {:reply, my_state, my_state}
    end


    # def getmystate(process_id) do
    #   GenServer.call(process_id, {:abc})
    # end
    # def handle_call({:abc}, _from, my_state) do
    #   {:reply, my_state, my_state}
    # end
end
