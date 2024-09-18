defmodule Eardown do
  use __MODULE__.Types
  alias __MODULE__.Options

  @moduledoc """
  A Peg Parser for Markdown (GFM)
  """

  @doc ~S"""
  Parses a markdown document passed in as a _single_ string, according to `options`
  """
  @spec parse(binary(), Options.t()) :: result_t()
  def parse(string, options \\ %Options{}) do
    {:ok, [], []}
  end
end

# SPDX-License-Identifier: Apache-2.0
