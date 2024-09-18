defmodule Eardown.Types do
  @moduledoc false

  defmacro __using__(_opts \\ []) do
    quote do
      @type ast_t :: list(tuple())
      @type error_message_t :: {severity_t(), non_neg_integer(), binary()}
      @type proper_list(t) :: [
      @type result_t :: {:ok, ast_t(), []} | {:error, ast_t(), proper_list(error_message_t())}
      @type severity_t :: :error | :fatal | :warn
    end
  end
end

# SPDX-License-Identifier: Apache-2.0
