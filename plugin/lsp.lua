-- vim.cmd[[
-- let g:diagnostic_enable_virtual_text = 1
-- let g:diagnostic_virtual_text_prefix = ' '
-- ]]

-- local signs = {
	-- { name = "DiagnosticSignError", text = "🔥" },
	-- { name = "DiagnosticSignWarn", text = "🚧" },
	-- { name = "DiagnosticSignHint", text = "👷" },
	-- { name = "DiagnosticSignInfo", text = "🙋" },
-- }

-- for _, sign in ipairs(signs) do
	-- vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
-- end

-- Show diagnostic when hovering
--vim.o.updatetime = 250
--vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]


--vim.lsp.set_log_level("trace")

-- local lsp_status = require('lsp-status')
-- lsp_status.config({
  -- kind_labels = vim.g.completion_customize_lsp_label,
  -- current_function = false,
  -- status_symbol = '',
  -- indicator_errors = '🔥 ',
  -- indicator_warnings = '🚧 ',
  -- indicator_info = '🙋 ',
  -- indicator_hint = '👷 ',
  -- indicator_ok = '✅',
  -- spinner_frames = { '⣾', '⣽', '⣻', '⢿', '⡿', '⣟', '⣯', '⣷' },
-- })
-- lsp_status.register_progress()
