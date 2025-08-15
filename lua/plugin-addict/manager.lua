---@class CustomModule
local M = {}

---@param plugins_path string
---@return nil
M.new = function(plugins_path)
  local plugin_name = vim.fn.input("Enter plugin name: ")
  if plugin_name ~= "" then
    local expanded_path = vim.fn.expand(plugins_path)
    local new_plugin_file = string.format("%s/%s.lua", expanded_path, plugin_name)
    vim.cmd("e " .. vim.fn.fnameescape(new_plugin_file))
  end
end

return M
