---@class CustomModule
local M = {}

---@return nil
M.new = function()
  local plugin_name = vim.fn.input("Enter plugin name: ")
  if plugin_name ~= "" then
    local config_path = vim.fn.stdpath("config")
    local path = string.format("%s/lua/plugins/%s.lua", config_path, plugin_name)
    vim.cmd("e " .. vim.fn.fnameescape(path))
  end
end

return M
