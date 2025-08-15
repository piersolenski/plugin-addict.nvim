-- main module file
local manager = require("plugin-addict.manager")

---@class Config
---@field plugins_path string The path to your plugins directory
local config = {
  plugins_path = vim.fn.stdpath("config") .. "/lua/plugins",
}

---@class MyModule
local M = {}

---@type Config
M.config = config

---@param args Config?
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

M.new = function()
  return manager.new(M.config.plugins_path)
end

return M

