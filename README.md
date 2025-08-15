# 🔌 plugin-addict.nvim

`plugin-addict.nvim` provides a **blazingly fast** way to add new plugins, so you can spend less time working and more time tweaking your config.

## ✨ Features

Creates a new file with the plugin name from a prompt in your configured plugins directory and opens it for editing.

https://github.com/user-attachments/assets/b9b1e051-c8eb-4f07-b54f-a5fc3be31ae4

## 🔩 Installation

Install the plugin with your preferred package manager:

```lua
-- Packer
use({
  "piersolenski/plugin-addict.nvim",
    config = function()
      require("plugin-addict").setup()
    end,
})

-- Lazy
{
  "piersolenski/plugin-addict.nvim",
  opts = {},
  keys = {
    {
      "<leader>n",
      function()
        require("plugin-addict").new()
      end,
      desc = "New plugin config",
    },
  },
}
```

## ⚙️ Configuration

`plugin-addict.nvim` works out of the box with no configuration necessary. If you want to customize the path for your plugins directory, you can use the `setup` function.

Here is the default configuration:

```lua
require("plugin-addict").setup({
  -- The path to your plugins directory
  plugins_path = vim.fn.stdpath("config") .. "/lua/plugins",
})
```

## 🚀 Usage

`plugin-addict.nvim` provides a single command to create a new plugin file.

| Command | Description |
| -- | -- |
| `:PluginAddictNew` | Prompts for a plugin name (e.g., `nvim-treesitter`) and creates a new configuration file for it in your configured `plugins_path` (e.g., `.../lua/plugins/nvim-treesitter.lua`). |

## ❓FAQ

### Did this really need to be a plugin?
No.
