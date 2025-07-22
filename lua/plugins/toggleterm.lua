return {
	{
	  'akinsho/toggleterm.nvim',
	  version = '*',
	  config = function()
		require('toggleterm').setup{
		  open_mapping = [[<C-\>]],
		  direction = 'float',
		  start_in_insert = true,
		  insert_mappings = true,
		}
  
		local Terminal = require('toggleterm.terminal').Terminal
  
		-- Create three horizontal terminals
		local term1 = Terminal:new({ direction = 'horizontal', hidden = true })
		local term2 = Terminal:new({ direction = 'horizontal', hidden = true })
		local term3 = Terminal:new({ direction = 'horizontal', hidden = true })
  
		-- Helper to map toggle functions
		local function map_toggle(key, term)
		  vim.keymap.set('n', key, function() term:toggle() end, { noremap = true, silent = true })
		  vim.keymap.set('t', key, function()
			vim.cmd('stopinsert')
			term:toggle()
		  end, { noremap = true, silent = true })
		end
  
		map_toggle('<A-1>', term1)
		map_toggle('<A-2>', term2)
		map_toggle('<A-3>', term3)
	  end
	}
  }

