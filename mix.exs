defmodule HedwigSlack.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :hedwig_slack,
     name: "Hedwig Slack",
     version: @version,
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     description: "A Slack adapter for Hedwig",
     deps: deps]
  end

  def application do
    [applications: [:logger, :connection, :gun, :hedwig, :poison]]
  end

  defp deps do
    [{:connection, "~> 1.0"},
     {:gun, "1.0.0-pre.1"},
     {:hedwig, git: "https://github.com/keathley/hedwig"},
     {:poison, "~> 2.0"}]
  end

  defp package do
    [files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Sonny Scroggin"],
     licenses: ["MIT"],
     links: %{
       "GitHub" => "https://github.com/hedwig-im/hedwig_slack"
     }]
  end
end
