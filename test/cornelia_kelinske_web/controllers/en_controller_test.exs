defmodule CorneliaKelinskeWeb.EnControllerTest do
  use CorneliaKelinskeWeb.ConnCase

  test "index", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "If you are looking for quality translation services"
  end

  test "index again", %{conn: conn} do
    conn = get(conn, "/en")
    assert html_response(conn, 200) =~ "If you are looking for quality translation services"
  end

  test "aboutme", %{conn: conn} do
    conn = get(conn, "/en/aboutme")

    assert html_response(conn, 200) =~
             "I am a translator/interpreter with both in-house and freelance experience."
  end

  test "overview", %{conn: conn} do
    conn = get(conn, "/en/overview")
    assert html_response(conn, 200) =~ "Prices depend on a number of different factors."
  end

  test "translation", %{conn: conn} do
    conn = get(conn, "/en/translation")

    assert html_response(conn, 200) =~
             "As a professional translator, I always translate your text as a whole."
  end

  test "interpretation", %{conn: conn} do
    conn = get(conn, "/en/interpretation")

    assert html_response(conn, 200) =~
             "n simple terms, interpretation is the oral translation of spoken words."
  end

  test "feedback", %{conn: conn} do
    conn = get(conn, "/en/feedback")

    assert html_response(conn, 200) =~
             "Cornelia tailored a rather involved text to the needs of a German readership in ways I would never have guessed at."
  end

  test "contact", %{conn: conn} do
    conn = get(conn, "/en/contact")

    assert html_response(conn, 200) =~ "I check my emails regularly from"
  end

  test "licences", %{conn: conn} do
    conn = get(conn, "/en/licenses")

    assert html_response(conn, 200) =~ "Quote svg icon"
  end
end
