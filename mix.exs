defmodule Exlist.Mixfile do
  use Mix.Project

  def project do
    [app: :exlist,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: description,
     package: package,
   ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, github: "elixir-lang/ex_doc", override: true,only: :dev},
   {:earmark, "~> 1.0", only: :dev},
   {:dialyxir, "~> 0.3", only: [:dev]},

 ]
  end

  defp description do
    """
      The extended functions of the lists 
      which are not available in the default 
      List Module
    """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README.md"],
     maintainers: ["Yos Riady"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/blackode/exlist",
              "Docs" => "http://hexdocs.pm/exlist/"}
     ]
  end
end
