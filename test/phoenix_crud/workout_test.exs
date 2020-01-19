defmodule PhoenixCrud.WorkoutTest do
  use PhoenixCrud.DataCase

  alias PhoenixCrud.Workout

  describe "exercises" do
    alias PhoenixCrud.Workout.Exercise

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def exercise_fixture(attrs \\ %{}) do
      {:ok, exercise} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Workout.create_exercise()

      exercise
    end

    test "list_exercises/0 returns all exercises" do
      exercise = exercise_fixture()
      assert Workout.list_exercises() == [exercise]
    end

    test "get_exercise!/1 returns the exercise with given id" do
      exercise = exercise_fixture()
      assert Workout.get_exercise!(exercise.id) == exercise
    end

    test "create_exercise/1 with valid data creates a exercise" do
      assert {:ok, %Exercise{} = exercise} = Workout.create_exercise(@valid_attrs)
      assert exercise.name == "some name"
    end

    test "create_exercise/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Workout.create_exercise(@invalid_attrs)
    end

    test "update_exercise/2 with valid data updates the exercise" do
      exercise = exercise_fixture()
      assert {:ok, %Exercise{} = exercise} = Workout.update_exercise(exercise, @update_attrs)
      assert exercise.name == "some updated name"
    end

    test "update_exercise/2 with invalid data returns error changeset" do
      exercise = exercise_fixture()
      assert {:error, %Ecto.Changeset{}} = Workout.update_exercise(exercise, @invalid_attrs)
      assert exercise == Workout.get_exercise!(exercise.id)
    end

    test "delete_exercise/1 deletes the exercise" do
      exercise = exercise_fixture()
      assert {:ok, %Exercise{}} = Workout.delete_exercise(exercise)
      assert_raise Ecto.NoResultsError, fn -> Workout.get_exercise!(exercise.id) end
    end

    test "change_exercise/1 returns a exercise changeset" do
      exercise = exercise_fixture()
      assert %Ecto.Changeset{} = Workout.change_exercise(exercise)
    end
  end
end
