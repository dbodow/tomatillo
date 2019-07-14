defmodule Tomatillo.Repo do
  use Ecto.Repo,
    otp_app: :tomatillo,
    adapter: Ecto.Adapters.Postgres
end
