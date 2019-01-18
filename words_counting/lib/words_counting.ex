defmodule WordsCounting do
	@moduledoc """
	Módulo de contagem de palavras
	"""
  def count(lines, mod) do
		lines
		|> mod.flat_map(&String.split/1)
		|> mod.map(&String.downcase/1)
		|> mod.map(&remove_special_chars/1)
		|> Enum.reduce(%{}, &count_word/2)
	end

	def count(lines) do
		lines
		|> Enum.flat_map(&String.split/1)
		|> Enum.map(&String.downcase/1)
		|> Enum.map(&remove_special_chars/1)
		|> Enum.reduce(%{}, &count_word/2)
	end

	defp remove_special_chars(string) do
		string
		|> String.normalize(:nfd)
		|> String.replace(~r/[^A-z\s]/u, "")
	end

  defp count_word(word, map) do
		Map.update(map, word, 1, &(&1 + 1))
  end
end
