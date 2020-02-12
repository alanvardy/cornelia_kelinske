defmodule CorneliaKelinskeWeb.ContactController do
  use CorneliaKelinskeWeb, :controller
  alias CorneliaKelinske.Email
  alias CorneliaKelinske.Email.{Contact, Content}

  @messages %{
    success: %{
      "en" => "I have received your message and will be in touch soon!",
      "de" => "Ich habe Ihre Nachricht erhalten und werde mich bald melden!"
    },
    failure: %{
      "en" => "There was an error sending your message. Please try again.",
      "de" => "Beim Senden Ihrer Nachricht ist ein Fehler aufgetreten. Bitte versuche es erneut."
    }
  }

  @render_paths %{
    "en" => "new.html",
    "de" => "neu.html"
  }

  @spec new(Plug.Conn.t(), map) :: Plug.Conn.t()
  def new(conn, _params) do
    render(conn, "new.html", lang: :en, title: "Contact", changeset: new_changeset())
  end

  @spec neu(Plug.Conn.t(), map) :: Plug.Conn.t()
  def neu(conn, _params) do
    render(conn, "neu.html", lang: :de, title: "Kontakt", changeset: new_changeset())
  end

  @spec create(Plug.Conn.t(), map) :: Plug.Conn.t()
  def create(conn, %{"message" => message_params} = params) do
    {:ok, language} = Map.fetch(message_params, "lang")

    with {:ok, _response} <- verify(params),
         {:ok, message} <- Email.contact_message(message_params) do
      Email.send(message)

      redirect_path =
        if language == "de" do
          Routes.de_path(conn, :index)
        else
          Routes.en_path(conn, :index)
        end

      conn
      |> put_flash(:info, get_in(@messages, [:success, language]))
      |> redirect(to: redirect_path)
    else
      # Failed changeset validation
      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_flash(:error, get_in(@messages, [:failure, language]) || "Language error")
        |> render(@render_paths[language], changeset: changeset, lang: String.to_atom(language))

      # Failed recaptcha
      _ ->
        conn
        |> put_flash(:error, get_in(@messages, [:failure, language]) || "Language error")
        |> redirect(to: Routes.contact_path(conn, :new))
    end
  end

  defp new_changeset, do: Contact.changeset(%Content{}, %{})

  defp verify(params) do
    case Application.get_env(:cornelia_kelinske, :env) do
      :systemtest -> {:ok, "We have to mock for system tests"}
      _ -> Recaptcha.verify(params["g-recaptcha-response"])
    end
  end
end
