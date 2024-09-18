defmodule Eardown.MixProject do
  use Mix.Project

  @version "0.1.0"
  @url "https://github.com/RobertDober/eardown"

  @deps [
    # {:credo, "~> 1.7.5", only: [:dev]},
    {:dialyxir, "~> 1.4.3", only: [:dev], runtime: false},
    {:excoveralls, "~> 0.14.4", only: [:test]},
    {:minipeg, "~> 0.6.3"},
  ]

  def project do
    [
      app: :eardown,
      version: @version,
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: @deps,
      description: "Eardown is a Markdown Parser with a non line based parsing approach. It is meant to be EarmarkParser v2.",
      package: package(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      test_coverage: [tool: ExCoveralls],
      aliases: [docs: &build_docs/1]
    ]
  end

  defp package do
    [
      files: [
        "lib",
        "mix.exs",
        "README.md",
        "RELEASE.md",
        "LICENSE"
      ],
      maintainers: [
        "Robert Dober <robert.dober@gmail.com>"
      ],
      licenses: [
        "Apache-2.0"
      ],
      links: %{
        "Changelog" => "#{@url}/blob/master/RELEASE.md",
        "GitHub" => @url
      }
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  @module "Eardown"
  defp build_docs(_) do
    Mix.Task.run("compile")
    ex_doc = Path.join(Mix.path_for(:escripts), "ex_doc")
    Mix.shell().info("Using escript: #{ex_doc} to build the docs")

    unless File.exists?(ex_doc) do
      raise "cannot build docs because escript for ex_doc is not installed, " <>
              "make sure to run `mix escript.install hex ex_doc` before"
    end

    args = [@module, @version, Mix.Project.compile_path()]
    opts = ~w[--main #{@module} --source-ref v#{@version} --source-url #{@url}]

    Mix.shell().info("Running: #{ex_doc} #{inspect(args ++ opts)}")
    System.cmd(ex_doc, args ++ opts)
    Mix.shell().info("Docs built successfully")
  end
end

# SPDX-License-Identifier: Apache-2.0
