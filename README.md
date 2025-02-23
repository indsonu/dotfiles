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
$ git clone https://github.com/yourusername/dotfiles.git ~/.config/nvim
```

2. Open Neovim and install the plugins:

```sh
$ nvim
:LazyInstall
```

## Usage

- To edit the main configuration, modify `init.lua`.
- To add or change key mappings, edit `lua/keymap-config/init.lua`.
- To configure plugins, edit the respective files in the `lua/` directory.

## Contributing

Feel free to open issues or submit pull requests if you have any suggestions or improvements.

## License

This project is licensed under the MIT License.

