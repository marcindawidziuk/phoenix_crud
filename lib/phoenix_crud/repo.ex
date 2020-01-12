defmodule PhoenixCrud.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_crud,
    adapter: Ecto.Adapters.Postgres
end
