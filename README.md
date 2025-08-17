# 🔌 plugin-addict.nvim

Ever find yourself constantly adding new plugins to your config? Yeah, me too. That's why I made `plugin-addict.nvim` - a dead simple plugin that does one thing: makes adding new plugins to your config **blazingly fast™**, so you can spend even less time working and more time tweaking your config.

## ✨ Features

- Creates a new plugin config file with one command
- Automatically names and places it in your plugins directory  
- Opens it for editing immediately
- That's it. That's the plugin.

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

## ❓ FAQ:

**Q: Did this really need to be a plugin?**  
A: No. But here we are.

**Q: Why would I use this?**  
A: Because you're going to keep adding plugins anyway, might as well make it faster.

**Q: Is this just enabling my addiction?**  
A: Yes. You're welcome.

## 🤓 About the author

As well as a passionate Vim enthusiast, I am a Full Stack Developer and Technical Lead from London, UK.

Whether it's to discuss a project, talk shop or just say hi, I'd love to hear from you!

- [Website](https://www.piersolenski.com/)
- [CodePen](https://codepen.io/piers)
- [LinkedIn](https://www.linkedin.com/in/piersolenski/)

<a href='https://ko-fi.com/piersolenski' target='_blank'>
  <img height='36' style='border:0px;height:36px;' src='https://cdn.ko-fi.com/cdn/kofi1.png?v=3' border='0' alt='Buy Me a Coffee at ko-fi.com' />
</a>
