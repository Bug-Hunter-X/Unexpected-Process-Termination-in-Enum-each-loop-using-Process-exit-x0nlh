```elixir
list = [1, 2, 3, 4, 5]

defmodule MyModule do
  def iterate(list) do
    Enum.each(list, fn x ->
      if x == 3 do
        throw(:shutdown)
      end
      IO.puts(x)
    end)
  end
end

try do
  MyModule.iterate(list)
catch
  :shutdown -> IO.puts("Process shutdown gracefully")
end
```