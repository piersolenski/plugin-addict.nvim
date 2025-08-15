-- main module file
local manager = require("plugin-addict.manager")

---@class Config
---@field opt string Your config option
local config = {
  path = "~/.config/nvim",
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
  return manager.new(M.config.path)
end

return M
