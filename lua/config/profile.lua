local M = {}

local marker = vim.fn.stdpath("config") .. "/.lite"
M.lite = vim.uv.fs_stat(marker) ~= nil

vim.api.nvim_create_user_command("LiteToggle", function()
  if vim.uv.fs_stat(marker) then
    os.remove(marker)
    vim.notify("lite mode OFF (restart nvim)")
  else
    local f = io.open(marker, "w")
    if f then f:close() end
    vim.notify("lite mode ON (restart nvim)")
  end
end, { desc = "Toggle lite mode (requires restart)" })

return M
