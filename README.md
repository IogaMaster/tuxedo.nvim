<h1 align="center">tuxedo.nvim</h1>

<h1 align="center">
<a href='#'><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px"/></a>
  <br> <br>
  <div>
    <a href="https://github.com/IogaMaster/tuxedo.nvim/issues">
        <img src="https://img.shields.io/github/issues/IogaMaster/tuxedo.nvim?color=fab387&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/IogaMaster/tuxedo.nvim/stargazers">
        <img src="https://img.shields.io/github/stars/IogaMaster/tuxedo.nvim?color=ca9ee6&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/IogaMaster/tuxedo.nvim">
        <img src="https://img.shields.io/github/repo-size/IogaMaster/tuxedo.nvim?color=ea999c&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/IogaMaster/tuxedo.nvim/blob/main/.github/LICENCE">
        <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=ca9ee6&colorA=313244&colorB=cba6f7"/>
    </a>
    <br>
    </div>
        <img href="https://builtwithnix.org" src="https://builtwithnix.org/badge.svg"/>
   </h1>
   <br>

`tuxedo.nvim` is a window wrapper around the [tuxedo](https://github.com/webstonehq/tuxedo/) tui application.
This plugin is like [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim), but for tuxedo.

## 📦 Installation and Usage

Include the repo with your favorite package manager.

After that setup will be automatically called, then you can either call the `:Tuxedo` command.
Or run `require("tuxedo").tuxedo()`.

## Config

```lua
require('tuxedo').setup {
	create_todo_file = true,
	width_ratio = 0.95,
	height_ratio = 0.80,
}
```


## ❤️ Contributing

Contributions are whole-heartedly welcome! Please feel free to suggest new features,
implement additional builders, helpers, or generally assist if you'd like. We'd be happy to have you.
There's more information in [CONTRIBUTING.md](CONTRIBUTING.md).

## 📜 License

Licensed under the MIT license ([LICENSE](LICENSE) or <https://opensource.org/licenses/MIT>).
Unless you explicitly state otherwise, any contribution intentionally
submitted for inclusion in this project by you, shall be licensed as above, without any additional terms or conditions.

