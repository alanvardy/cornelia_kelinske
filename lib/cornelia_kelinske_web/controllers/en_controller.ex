defmodule CorneliaKelinskeWeb.EnController do
  use CorneliaKelinskeWeb, :controller

  alias CorneliaKelinske.Feedback

  @spec index(Plug.Conn.t(), map) :: Plug.Conn.t()
  def index(conn, _params) do
    render(conn, "index.html", lang: :en, title: "Welcome", feedback: Feedback.index_english())
  end

  @spec aboutme(Plug.Conn.t(), map) :: Plug.Conn.t()
  def aboutme(conn, _params), do: render(conn, "aboutme.html", lang: :en, title: "About Me")

  @spec overview(Plug.Conn.t(), map) :: Plug.Conn.t()
  def overview(conn, _params), do: render(conn, "overview.html", lang: :en, title: "Overview")

  @spec feedback(Plug.Conn.t(), map) :: Plug.Conn.t()
  def feedback(conn, _params) do
    render(conn, "feedback.html", lang: :en, title: "Feedback", feedback: Feedback.english())
  end

  @spec interpretation(Plug.Conn.t(), map) :: Plug.Conn.t()
  def interpretation(conn, _params) do
    render(conn, "interpretation.html", lang: :en, title: "Interpretation")
  end

  @spec translation(Plug.Conn.t(), map) :: Plug.Conn.t()
  def translation(conn, _params) do
    render(conn, "translation.html", lang: :en, title: "Translation")
  end

  @spec licenses(Plug.Conn.t(), map) :: Plug.Conn.t()
  def licenses(conn, _params), do: render(conn, "licenses.html", lang: :en, title: "Licences")
end
