defmodule NojsWeb.PageCommander do
  use Drab.Commander

  def add(socket, sender) do
    list = peek(socket, :todos)
    %{"form" => %{"new_todo" => value}} = sender
    poke(socket, todos: list ++ [value])
    set_prop(socket, "#info_flash", innerHTML: "Added")
    Task.start(fn ->
      Process.sleep(2000)
      set_prop(socket, "#info_flash", innerHTML: "")
    end)
  end
end
