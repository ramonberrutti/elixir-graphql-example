defmodule BlogApiWeb.Router do
  use BlogApiWeb, :router
  alias BlogApiWeb.Schemas

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  # scope "/api", BlogApiWeb do
  #   pipe_through :api
  # end

  forward "/api", Absinthe.Plug,
    schema: Schemas.ApiSchema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: Schemas.ApiSchema,
    interface: :playground
end
