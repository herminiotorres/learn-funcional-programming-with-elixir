defmodule Navigator do
  def navigate(directory) do
    expanded_directory = Path.expand(directory)
    go_through([expanded_directory])
  end

  defp go_through([]), do: nil
  defp go_through([content | rest]) do
    print_and_navigate(content, File.dir?(content))
    go_through(rest)
  end

  defp print_and_navigate(_directory, false), do: nil
  defp print_and_navigate(directory, true) do
    IO.puts directory
    children_directories = File.ls!(directory)
    go_through(expanded_directories(children_directories, directory))
  end

  defp expanded_directories([], _relative_to), do: []
  defp expanded_directories([directory | directories], relative_to) do
    expanded_directory = Path.expand(directory, relative_to)
    [expanded_directory | expanded_directories(directories, relative_to)]
  end
end
