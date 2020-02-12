defmodule CorneliaKelinskeWeb.EnView do
  use CorneliaKelinskeWeb, :view

  @spec company_details_present?(any) :: boolean
  def company_details_present?(%{company: company, website: website})
      when is_list(company) and is_binary(website) do
    true
  end

  def company_details_present?(_), do: false
end
