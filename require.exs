defmodule Require do
    import IO
    def require1 do
    #   # require Float
    #   #    Float.floor(3.045, 3)
    #   a = 10
    #   b = 20
    #   c = a + b
    # end
    # def quote1 do
    #   quote do: require1
    a = 10
    b = 20
    d = 30
     quote do: abc(a, b, d)
    end
    def abc(a,b,d) do
    c = a + b
    end
  end
