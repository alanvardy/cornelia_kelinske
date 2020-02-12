defmodule CorneliaKelinskeWeb.EnController do
  use CorneliaKelinskeWeb, :controller

  @spec index(Plug.Conn.t(), map) :: Plug.Conn.t()
  def index(conn, _params), do: render(conn, "index.html", lang: :en, title: "Welcome")

  @spec overview(Plug.Conn.t(), map) :: Plug.Conn.t()
  def overview(conn, _params), do: render(conn, "overview.html", lang: :en, title: "Overview")

  @spec aboutme(Plug.Conn.t(), map) :: Plug.Conn.t()
  def aboutme(conn, _params), do: render(conn, "aboutme.html", lang: :en, title: "About Me")

  @spec feedback(Plug.Conn.t(), map) :: Plug.Conn.t()
  def feedback(conn, _params) do
    feedback = [
      %{
        text:
          "Cornelia tailored a rather involved text to the needs of a German readership in ways I would never have guessed at.
                The finished product was neat and timely. I would warmly recommend her to anyone requiring tact and intelligence in
                their translation work.",
        author: ["S.E.", "(private client)"]
      },
      %{
        text:
          "Cornelia Kelinske has been translating for IJM Deutschland for three years. She is always reliable, precise and
                skilled with words. We are extremely satisfied.",
        author: ["Judith Kühl", "Administrative Coordinator"],
        company: ["INTERNATIONAL JUSTICE MISSION", "DEUTSCHLAND e.V."],
        website: "http://ijmde.org/"
      },
      %{
        text:
          "My name is Julia Glaremin, Managing Partner of Apollo Lingua. We are a Germany-based translation company. We pride
                ourselves on working with the best and most reliable translators in the industry and I am proud to say that Cornelia
                Kelinske fulfills all of these qualities and more. She is incredibly talented, very accurate and has a fantastic
                work-ethic and attitude. I have utilized her skills on numerous translation projects over the past couple of years and
                she is one of the best translators I ever had the privilege of working with. I am pleased to recommend her for any
                German/ English and English/ German project for which she may be under consideration. You can expect nothing but
                excellence from her.",
        author: ["Julia Glaremin", "Managing Partner"],
        company: ["Apollo Lingua GbR"],
        website: "http://www.apollo-lingua.com/"
      }
    ]

    render(conn, "feedback.html", lang: :en, title: "Feedback", feedback: feedback)
  end

  @spec interpretation(Plug.Conn.t(), map) :: Plug.Conn.t()
  def interpretation(conn, _params),
    do: render(conn, "interpretation.html", lang: :en, title: "Interpretation")

  @spec translation(Plug.Conn.t(), map) :: Plug.Conn.t()
  def translation(conn, _params),
    do: render(conn, "translation.html", lang: :en, title: "Translation")

  @spec licenses(Plug.Conn.t(), map) :: Plug.Conn.t()
  def licenses(conn, _params), do: render(conn, "licenses.html", lang: :en, title: "Licences")
end
