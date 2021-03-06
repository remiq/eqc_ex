defmodule EQC.Mixfile do
  use Mix.Project

  @version "1.2.3"

  def project do
    [ app: :eqc_ex,
      version: @version,
      elixir: "~> 1.0",
      test_pattern: "*_{test,eqc}.exs",
      deps: deps,
      docs: docs,
      package: package,
      description: "Wrappers to facilitate using Quviq QuickCheck with Elixir.",
    ]
  end

  def application do
    []
  end

  defp docs do
    [
      readme: "README.md",
      main: "EQC",
      source_ref: "release", #"v#{@version}",
      source_url: "https://github.com/Quviq/eqc_ex",
    ]
  end

  defp package do
    [
      contributors: ["Quviq AB"],
      licenses: ["BSD"],
      files: ["lib", "mix.exs", "LICENSE", "README.md"],
      links: %{"quviq.com" => "http://www.quviq.com"}
    ]
  end

  defp deps do
    [{:ex_doc, github: "elixir-lang/ex_doc", only: :dev}]
  end
end
