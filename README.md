# dotfiles

This repository contains my personal configuration files for Neovim. These configurations are organized into various modules for better maintainability and customization.

## Structure

The configuration is organized as follows:

```
nvim/
	ftplugin/
		java.lua
	init.lua
	init.lua~
	lazy-lock.json
	lua/
		autocommand-config/
			init.lua
		keymap-config/
			init.lua
		lazy-config/
			init.lua
		lsp-config/
			init.lua
		lualine-config/
			init.lua
		mason-config/
			init.lua
		nvim-cmp-config/
			init.lua
		option-config/
			init.lua
		telescope-config/
			init.lua
		treesitter-config/
			init.lua
		which-key-config/
			init.lua
README.md
```

## Installation

1. Clone the repository:

```sh
$ git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
```

2. Create a symbolic link to the Neovim configuration:

```sh
$ ln -s ~/dotfiles/nvim ~/.config/nvim
```

3. Open Neovim and install the plugins:

```sh
$ nvim
:LazyInstall
```

## Plugin Descriptions

- `autocommand-config`: Contains autocommand configurations for various events.
- `keymap-config`: Defines custom key mappings for Neovim.
- `lazy-config`: Configures lazy loading for plugins to improve startup time.
- `lsp-config`: Sets up Language Server Protocol (LSP) configurations for better code intelligence.
- `lualine-config`: Configures the status line using the `lualine` plugin.
- `mason-config`: Manages external tools and dependencies using the `mason` plugin.
- `nvim-cmp-config`: Configures the completion engine using the `nvim-cmp` plugin.
- `option-config`: Sets general options and settings for Neovim.
- `telescope-config`: Configures the fuzzy finder using the `telescope` plugin.
- `treesitter-config`: Sets up Treesitter for better syntax highlighting and code parsing.
- `which-key-config`: Configures the `which-key` plugin for displaying available key bindings.

## Usage

- To edit the main configuration, modify `init.lua`.
- To add or change key mappings, edit `lua/keymap-config/init.lua`.
- To configure plugins, edit the respective files in the `lua/` directory.

## Contributing

Feel free to open issues or submit pull requests if you have any suggestions or improvements.

## License

This project is licensed under the MIT License.

