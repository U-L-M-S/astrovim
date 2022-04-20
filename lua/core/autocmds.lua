local M = {}

local utils = require "core.utils"

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

vim.cmd [[
  augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline
    autocmd WinEnter * set cursorline
  augroup end
]]
vim.cmd [[

  "To run C/C++ inside nvim
    map <F4> :w <CR> :!gcc % -o .%< && ./.%< && rm .%< <CR>
    "imap <F4> :w <CR> :!gcc % -o %< && ./%< <CR>
  
    "To run python inside nvim
    autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
    autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

  ]]
if utils.is_available "dashboard-nvim" and utils.is_available "bufferline.nvim" then
  vim.cmd [[
    augroup dashboard_settings
      autocmd!
      autocmd FileType dashboard set showtabline=0
      autocmd BufWinLeave <buffer> set showtabline=2
      autocmd BufEnter * if &ft is "dashboard" | set nocursorline | endif
    augroup end
  ]]
end

vim.cmd [[
  command! AstroUpdate lua require('core.utils').update()
]]

return M
