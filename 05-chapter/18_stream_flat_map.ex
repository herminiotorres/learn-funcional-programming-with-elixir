nested_map = Enum.chunk_every(Enum.map(1..1_000, & &1), 2)
flat_map = Enum.flat_map(nested_map, & &1)
flat_map |> IO.inspect(charlists: :as_lists, limit: :infinity, pretty: true)
