defmodule CorneliaKelinskeWeb.DeController do
  use CorneliaKelinskeWeb, :controller
  alias CorneliaKelinske.Feedback

  @spec index(Plug.Conn.t(), map) :: Plug.Conn.t()
  def index(conn, _params) do
    render(conn, "index.html", lang: :de, title: "Willkommen", feedback: Feedback.index_german())
  end

  @spec ubermich(Plug.Conn.t(), map) :: Plug.Conn.t()
  def ubermich(conn, _params), do: render(conn, "ubermich.html", lang: :de, title: "Über mich")

  @spec allgemeines(Plug.Conn.t(), map) :: Plug.Conn.t()
  def allgemeines(conn, _params),
    do: render(conn, "allgemeines.html", lang: :de, title: "Allgemeines")

  @spec feedback(Plug.Conn.t(), map) :: Plug.Conn.t()
  def feedback(conn, _params) do
    render(conn, "feedback.html", lang: :de, title: "Feedback", feedback: Feedback.german())
  end

  @spec ubersetzen(Plug.Conn.t(), map) :: Plug.Conn.t()
  def ubersetzen(conn, _params),
    do: render(conn, "ubersetzen.html", lang: :de, title: "Übersetzen")

  @spec dolmetschen(Plug.Conn.t(), map) :: Plug.Conn.t()
  def dolmetschen(conn, _params),
    do: render(conn, "dolmetschen.html", lang: :de, title: "Dolmetschen")

  @spec linzenzen(Plug.Conn.t(), map) :: Plug.Conn.t()
  def linzenzen(conn, _params), do: render(conn, "linzenzen.html", lang: :de, title: "Linzenzen")
end
