defmodule PhoenixCrud.Repo.Migrations.CreateWorkouts do
  use Ecto.Migration

  def change do
    create table(:workouts) do
      add :name, :string

      timestamps()
    end

  end
end
