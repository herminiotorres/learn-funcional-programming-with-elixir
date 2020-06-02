defmodule TaskList do
  @file_name "task_list.md"

  def add(task_name) do
    task = "[ ]" <> task_name <> "\n"
    File.write(@file_name, task, [:append])
  end

  def show_list do
    File.read(@file_name)
  end
end
