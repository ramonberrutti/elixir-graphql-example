defmodule BlogApi.Admin do
    import Ecto.Query, warn: false
    alias BlogApi.Repo

    alias BlogApi.Admin.User

    def list_users() do
        Repo.all(User)
    end

    def get_user!(id) do
        Repo.get!(User, id)
    end
end