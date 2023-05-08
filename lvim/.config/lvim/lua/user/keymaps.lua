lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.visual_mode["p"] = '"_dP'

lvim.keys.normal_mode["*"] = { "<cmd>vsplit<cr>", desc = "Vertical Split" }
lvim.keys.normal_mode["+"] = { "<cmd>split<cr>", desc = "Horizontal Split" }

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
