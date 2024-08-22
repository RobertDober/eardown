# Eardown


[![CI](https://github.com/robertdober/eardown/actions/workflows/elixir.yml/badge.svg)](https://github.com/robertdober/eardown/actions/workflows/elixir.yml)
[![Coverage Status](https://coveralls.io/repos/github/RobertDober/eardown/badge.svg?branch=master)](https://coveralls.io/github/RobertDober/eardown?branch=master)
[![Hex.pm](https://img.shields.io/hexpm/v/eardown.svg)](https://hex.pm/packages/eardown)
[![Hex.pm](https://img.shields.io/hexpm/dw/eardown.svg)](https://hex.pm/packages/eardown)
[![Hex.pm](https://img.shields.io/hexpm/dt/eardown.svg)](https://hex.pm/packages/eardown)
Eardown is a Markdown Parser with a non line based parsing approach. It is meant to be EarmarkParser v2.

## Synopsis

Eardown is meant to replace [EarmarkParser](https://hex.pm/packages/earmark_parser).

It shall parse [Markdown](https://en.wikipedia.org/wiki/Markdown) files and transform them into an
[AST](https://en.wikipedia.org/wiki/Abstract_syntax_tree), just as EarmarkParser does.

What are the reasons for this new library?

- I found EarmarkParser difficult to extend and even maintain
- I believe that line based parsing, although widely recommended, is not necesserily the
simplest approach (for me at least), therefore Eardown uses a character based parsing approach.
- I believe that parsing large Markdown documents in parallel, with an heuristic splitting of
the input by, say lines starting with `#` and a fallback strategy should not be too complicated with the character based 
approach, but we will see.
- Markdown itself has evolved and while [Dave Thomas, aka pragdave](https://github.com/pragdave/earmark) has created a
marvellous product in an incredible short time by also including popular extensions and [Commonmark](https://commonmark.org/),
nowadays almost everone and her best friend assume that [GFM](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github) is supported.

  Eardown will try to do this from the beginning.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `eardown` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:eardown, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/eardown>.



## Contributing

Pull Requests are happily accepted.


## Author

Copyright © 2024 Robert Dober
robert.dober@gmail.com

## LICENSE

Same as Elixir, which is Apache License v2.0. Please refer to [LICENSE](LICENSE) for details.

<!-- SPDX-License-Identifier: Apache-2.0 -->
