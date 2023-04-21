-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")
  
  -- Current colorscheme
  use("bluz71/vim-nightfly-guicolors")
  use('Mofiqul/vscode.nvim')
  
  -- Backup Colorscheme
  use("tomasiser/vim-code-dark")
  
  -- Autoclose Brackets
  use("windwp/nvim-autopairs")

  -- Integrate Git
  use("lewis6991/gitsigns.nvim")

  -- File tree, icons and statuslines
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("nvim-lualine/lualine.nvim")
  
  -- Window Management
  use("christoomey/vim-tmux-navigator")
  use("szw/vim-maximizer")

  -- Quality of life basics
  use("tpope/vim-surround")
  use("inkarkat/vim-ReplaceWithRegister")
  use("numToStr/Comment.nvim")

  -- Telescope
  use("nvim-lua/plenary.nvim")
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder


if packer_bootstrap then
    require("packer").sync()
  end
end)
