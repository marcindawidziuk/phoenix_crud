defmodule PhoenixCrud.Repo.Migrations.CreateWorkoutExerciseMappings do
  use Ecto.Migration

  def change do
    create table(:workout_exercise_mappings) do
      add :order, :integer
      add :repetitions, :integer
      add :weight, :integer
      add :workout_id, references(:workouts, on_delete: :nothing)
      add :exercise_id, references(:exercises, on_delete: :nothing)

      timestamps()
    end

    create index(:workout_exercise_mappings, [:workout_id])
    create index(:workout_exercise_mappings, [:exercise_id])
  end
end
