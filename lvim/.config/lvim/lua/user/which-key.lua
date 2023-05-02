-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
local Terminal = require('toggleterm.terminal').Terminal

if vim.fn.executable "lazygit" == 1 then
  local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float",
    float_opts = {
      border = "double",
    },
  })

  function _lazygit_toggle()
    lazygit:toggle()
  end

  lvim.builtin.which_key.mappings["tl"] = { "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true },
    "Toggleterm Lazygit" }
end
