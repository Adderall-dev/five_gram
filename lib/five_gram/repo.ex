defmodule FiveGram.Repo do
  use Ecto.Repo,
    otp_app: :five_gram,
    adapter: Ecto.Adapters.Postgres
end
