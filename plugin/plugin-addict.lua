vim.api.nvim_create_user_command("PluginAddictNew", function(opts)
  require("plugin-addict").new(opts.args)
end, { nargs = "?" })
