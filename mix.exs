defmodule ExampleApp.MixProject do
  use Mix.Project

  def project do
    [app: :example_app, version: "0.0.1", escript: escript()]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp escript do
    [main_module: ExampleApp.CLI]
  end
end
