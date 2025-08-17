---@class CustomModule
local M = {}

---@param plugins_path string
---@param plugin_name? string
---@return nil
M.new = function(plugins_path, plugin_name)
  if not plugin_name or plugin_name == "" then
    plugin_name = vim.fn.input("Enter plugin name: ")
  end
  if plugin_name ~= "" then
    local expanded_path = vim.fn.expand(plugins_path)
    local new_plugin_file = string.format("%s/%s.lua", expanded_path, plugin_name)
    vim.cmd("e " .. vim.fn.fnameescape(new_plugin_file))
  end
end

return M
