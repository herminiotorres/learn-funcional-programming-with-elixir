defmodule MyString do
  # def capitalize_words(title) do
  #   words = String.split(title)
  #   capitalized_words = Enum.map(words, &String.capitalize/1)
  #   Enum.join(capitalized_words, " ")
  # end

  # def capitalize_words(title) do
  #   Enum.join(
  #     Enum.map(
  #       String.split(title),
  #       &String.capitalize/1
  #     ),
  #     " "
  #   )
  # end

  # def capitalize_words(title) do
  #   title
  #   |> String.split()
  #   |> Enum.map(&String.capitalize/1)
  #   |> Enum.join(" ")
  # end

  def capitalize_words(title) do
    title
    |> String.split()
    |> capitalize_all
    |> join_with_whitespace
  end

  def capitalize_all(words) do
    words
    |> Enum.map(&String.capitalize/1)
  end

  def join_with_whitespace(words) do
    words
    |> Enum.join(" ")
  end
end

MyString.capitalize_words("a whole new world") |> IO.inspect()

IO.puts("")

"a whole new world" |> String.split() |> IO.inspect()

IO.puts("")

"a whole new world" |> String.split() |> Enum.map(&String.capitalize/1) |> IO.inspect()
