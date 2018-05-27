defmodule DockerTwo.Release.Tasks do
  def migrate do
    {:ok, _} = Application.ensure_all_started(:docker_two)

    path = Application.app_dir(:docker_two, "priv/repo/migrations")

    Ecto.Migrator.run(DockerTwo.Repo, path, :up, all: true)
  end
end
