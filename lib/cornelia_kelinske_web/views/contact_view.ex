defmodule CorneliaKelinskeWeb.ContactView do
  use CorneliaKelinskeWeb, :view

  @spec production? :: boolean
  def production? do
    Application.get_env(:cornelia_kelinske, :env) == :prod
  end
end
