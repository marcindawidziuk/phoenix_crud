defmodule PhoenixCrud.Workout.WorkoutExerciseMapping do
  use Ecto.Schema
  import Ecto.Changeset

  schema "workout_exercise_mappings" do
    field :order, :integer
    field :repetitions, :integer
    field :weight, :integer
    field :workout_id, :id
    field :exercise_id, :id

    timestamps()
  end

  @doc false
  def changeset(workout_exercise_mapping, attrs) do
    workout_exercise_mapping
    |> cast(attrs, [:order, :repetitions, :weight])
    |> validate_required([:order, :repetitions, :weight])
  end
end
