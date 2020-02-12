defmodule CorneliaKelinske.Email.Content do
  @moduledoc "The content for an email message"
  defstruct from_email: nil, to_email: nil, name: nil, message: nil, phone: nil

  @type t :: %__MODULE__{
          from_email: String.t(),
          to_email: String.t(),
          phone: String.t(),
          name: String.t(),
          message: String.t()
        }

  @spec types :: %{
          from_email: :string,
          message: :string,
          name: :string,
          to_email: :string,
          phone: :string
        }
  def types do
    %{from_email: :string, to_email: :string, name: :string, message: :string, phone: :string}
  end
end
