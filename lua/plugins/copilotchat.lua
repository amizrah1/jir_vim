return {
	'CopilotC-Nvim/CopilotChat.nvim',
	event = 'VeryLazy',
	branch = 'canary',
	dependencies = {
		{ 'github/copilot.vim' },
		{ 'nvim-lua/plenary.nvim' },
	},
	config = function(_, opts)
		local chat = require('CopilotChat')

		local whichkey = require('which-key')
		whichkey.add({
			{ '<leader>c', group = 'Copilot Chat', mode = 'vn' },
			{ '<leader>ca', group = 'Additional options', mode = 'vn' },
			{ '<leader>cp', desc = 'System prompt' },
			{ '<leader>cas', desc = 'Show selection' },
			{ '<leader>cag', desc = 'Get diff' },
			{ '<leader>cay', desc = 'Yank diff' },
			{ '<leader>cad', desc = 'Show diff' },
		})
		chat.setup(opts)
	end,
	opts = {
		debug = false,
		mappings = {
			complete = {
				detail = 'Use @<Tab> or /<Tab> for options.',
				insert = '<Tab>',
			},
			close = {
				normal = 'q',
				insert = '',
			},
			reset = {
				normal = '',
				insert = '',
			},
			submit_prompt = {
				normal = '<CR>',
				insert = '<C-s>',
			},
			accept_diff = {
				normal = '<leader>cg',
				insert = '',
			},
			yank_diff = {
				normal = '<leader>cay',
			},
			show_diff = {
				normal = '<leader>cad',
			},
			show_system_prompt = {
				normal = '<leader>cap',
			},
			show_user_selection = {
				normal = '<leader>cas',
			},
		},
	},
	keys = {
		-- Show help actions with telescope
		{
			'<leader>cah',
			function()
				local actions = require('CopilotChat.actions')
				require('CopilotChat.integrations.telescope').pick(actions.help_actions())
			end,
			desc = 'CopilotChat - Help actions',
		},
		-- Show prompts actions with telescope
		{
			'<leader>cap',
			function()
				local actions = require('CopilotChat.actions')
				require('CopilotChat.integrations.telescope').pick(actions.prompt_actions())
			end,
			desc = 'CopilotChat - Prompt actions',
		},
		{
			'<leader>cap',
			":lua require('CopilotChat.integrations.telescope').pick(require('CopilotChat.actions').prompt_actions({selection = require('CopilotChat.select').visual}))<CR>",
			mode = 'x',
			desc = 'CopilotChat - Prompt actions',
		},
		-- Code related commands
		{ '<leader>cae', '<cmd>CopilotChatExplain<cr>', desc = 'CopilotChat - Explain code' },
		{ '<leader>cat', '<cmd>CopilotChatTests<cr>', desc = 'CopilotChat - Generate tests' },
		{ '<leader>car', '<cmd>CopilotChatReview<cr>', desc = 'CopilotChat - Review code' },
		{ '<leader>caR', '<cmd>CopilotChatRefactor<cr>', desc = 'CopilotChat - Refactor code' },
		{ '<leader>can', '<cmd>CopilotChatBetterNamings<cr>', desc = 'CopilotChat - Better Naming' },
		-- Chat with Copilot in visual mode
		{
			'<leader>cav',
			':CopilotChatVisual',
			mode = 'x',
			desc = 'CopilotChat - Open in vertical split',
		},
		{
			'<leader>cax',
			':CopilotChatInline<cr>',
			mode = 'x',
			desc = 'CopilotChat - Inline chat',
		},
		-- Custom input for CopilotChat
		{
			'<leader>cd',
			function()
				local input = vim.fn.input('Ask Copilot: ')
				if input ~= '' then
					vim.cmd('CopilotChat ' .. input)
				end
			end,
			desc = 'CopilotChat - Ask input',
		},
		-- Generate commit message based on the git diff
		{
			'<leader>cam',
			'<cmd>CopilotChatCommit<cr>',
			desc = 'CopilotChat - Generate commit message for all changes',
		},
		{
			'<leader>caM',
			'<cmd>CopilotChatCommitStaged<cr>',
			desc = 'CopilotChat - Generate commit message for staged changes',
		},
		-- Quick chat with Copilot
		{
			'<leader>caq',
			function()
				local input = vim.fn.input('Quick Chat: ')
				if input ~= '' then
					vim.cmd('CopilotChatBuffer ' .. input)
				end
			end,
			desc = 'CopilotChat - Quick chat',
		},
		-- Debug
		{ '<leader>cad', '<cmd>CopilotChatDebugInfo<cr>', desc = 'CopilotChat - Debug Info' },
		-- Fix the issue with diagnostic
		{ '<leader>caf', '<cmd>CopilotChatFixDiagnostic<cr>', desc = 'CopilotChat - Fix Diagnostic' },
		-- Clear buffer and chat history
		{ '<leader>cal', '<cmd>CopilotChatReset<cr>', desc = 'CopilotChat - Clear buffer and chat history' },
		-- Toggle Copilot Chat Vsplit
		{ '<leader>cc', '<cmd>CopilotChatToggle<cr>', desc = 'CopilotChat - Toggle' },
		-- Copilot Chat Models
		{ '<leader>ca?', '<cmd>CopilotChatModels<cr>', desc = 'CopilotChat - Select Models' },
	},
}
