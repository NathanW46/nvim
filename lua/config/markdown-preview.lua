local M = {}
local state = { win = nil, buf = nil, source = nil }

local function is_open()
  return state.win ~= nil and vim.api.nvim_win_is_valid(state.win)
end

local function render()
  if not is_open() or not state.source then return end
  local file = vim.api.nvim_buf_get_name(state.source)
  if file == "" then return end
  local view
  vim.api.nvim_win_call(state.win, function()
    view = vim.fn.winsaveview()
    vim.wo[state.win].winfixbuf = false
    vim.cmd("enew")
    state.buf = vim.api.nvim_get_current_buf()
    vim.bo[state.buf].bufhidden = "wipe"
    vim.bo[state.buf].buflisted = false
    vim.wo[state.win].signcolumn = "no"
    vim.wo[state.win].number = false
    vim.wo[state.win].relativenumber = false
    vim.wo[state.win].statuscolumn = ""
    vim.wo[state.win].foldcolumn = "0"
    local info = vim.fn.getwininfo(state.win)[1]
    local width = info.width - info.textoff
    vim.fn.termopen(string.format("glow -w %d %s", width, vim.fn.shellescape(file)), {
      on_exit = function()
        if view and is_open() then
          vim.api.nvim_win_call(state.win, function()
            vim.fn.winrestview(view)
          end)
        end
      end,
    })
    vim.wo[state.win].winfixbuf = true
  end)
end

function M.toggle()
  if is_open() then
    vim.api.nvim_win_close(state.win, true)
    state.win, state.buf, state.source = nil, nil, nil
    return
  end
  state.source = vim.api.nvim_get_current_buf()
  vim.cmd("vsplit")
  state.win = vim.api.nvim_get_current_win()
  render()
  vim.cmd("wincmd p")
end

function M.refresh() render() end

vim.api.nvim_create_user_command("MdPreview", M.toggle, {})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.md",
  callback = function() if is_open() then M.refresh() end end,
})

vim.keymap.set("n", "<leader>mp", M.toggle,  { desc = "Toggle markdown preview" })
vim.keymap.set("n", "<leader>mr", M.refresh, { desc = "Refresh markdown preview" })

return M
