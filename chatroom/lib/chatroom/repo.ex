defmodule Chatroom.Repo do
  use Ecto.Repo,
    otp_app: :chatroom,
    adapter: Ecto.Adapters.Postgres
end
