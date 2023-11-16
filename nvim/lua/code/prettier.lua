-- Formatter Configuration
require('formatter').setup({
  filetype = {
    javascript = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    typescript = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    jsx = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    typescriptreact = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    html = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    css = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    json = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    markdown = {
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true
        }
      end
    },
    -- Add other filetypes as needed
  }
})

-- Keybinding
vim.api.nvim_set_keymap('n', '<leader>F', '<Cmd>Format<CR>', { noremap = true, silent = true })
