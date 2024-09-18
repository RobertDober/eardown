defmodule Test.Acceptance.ParaTest do
  use ExUnit.Case
  import Eardown, only: [parse: 1]

  
  describe "empty input" do
    test "empty string" do
      assert parse("") == {:ok, [], []}
    end
  end
end
# SPDX-License-Identifier: Apache-2.0
