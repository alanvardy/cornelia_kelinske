defmodule CorneliaKelinskeWeb.DeControllerTest do
  use CorneliaKelinskeWeb.ConnCase

  test "index", %{conn: conn} do
    conn = get(conn, "/de")
    assert html_response(conn, 200) =~ "Sie benötigen professionelle Übersetzungen"
  end

  test "ubermich", %{conn: conn} do
    conn = get(conn, "/de/ubermich")

    assert html_response(conn, 200) =~ "Ich bin Diplom-Dolmetscherin und Übersetzerin"
  end

  test "allgemeines", %{conn: conn} do
    conn = get(conn, "/de/allgemeines")
    assert html_response(conn, 200) =~ "Genauere Informationen hierzu finden Sie"
  end

  test "ubersetzen", %{conn: conn} do
    conn = get(conn, "/de/ubersetzen")

    assert html_response(conn, 200) =~
             "Als professionelle Übersetzerin betrachte ich Ihren Text"
  end

  test "dolmetschen", %{conn: conn} do
    conn = get(conn, "/de/dolmetschen")

    assert html_response(conn, 200) =~
             "Beim Konsekutivdolmetschen spricht der Dolmetscher nachdem"
  end

  test "feedback", %{conn: conn} do
    conn = get(conn, "/de/feedback")

    assert html_response(conn, 200) =~
             "Cornelia hat einen anspruchsvollen Text besser als ich je erwartet hätte"
  end

  test "kontakt", %{conn: conn} do
    conn = get(conn, "/de/kontakt")

    assert html_response(conn, 200) =~ "Ihre Anfragen beantworte ich stets so schnell wie"
  end

  test "linzenzen", %{conn: conn} do
    conn = get(conn, "/de/linzenzen")

    assert html_response(conn, 200) =~ "Das svg-Angebotssymbol wurde von"
  end
end
