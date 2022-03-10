local Plug = require("utils.vim-plug")

Plug.begin("$HOME/.config/nvim/autoload/plugged")

Plug "nvim-lua/plenary.nvim"

Plug("lewis6991/gitsigns.nvim", {
    config = function()
        require("plugins.gitsigns")
    end
})

Plug "neovim/nvim-lspconfig"

Plug "hrsh7th/cmp-nvim-lsp"

Plug("williamboman/nvim-lsp-installer", {
    config = function()
        require("plugins.lsp.init")
    end
})

Plug "L3MON4D3/LuaSnip"

Plug "saadparwaiz1/cmp_luasnip"

Plug "hrsh7th/cmp-buffer"

Plug "hrsh7th/cmp-path"

Plug "hrsh7th/cmp-nvim-lua"

Plug("hrsh7th/nvim-cmp", {
    config = function()
        require("plugins.cmp")
    end
})

Plug "moll/vim-bbye"

Plug "jiangmiao/auto-pairs"

Plug("nvim-lualine/lualine.nvim", {
    config = function()
        require("plugins.lualine")
    end
})

Plug("nvim-treesitter/nvim-treesitter", {
    config = function()
        require("plugins.treesitter")
    end
})

Plug("kyazdani42/nvim-tree.lua", {
    config = function()
        require("plugins.nvim-tree")
    end
})

Plug("kyazdani42/nvim-web-devicons", {
    config = function()
        require("plugins.icons")
    end
})

Plug("akinsho/toggleterm.nvim", {
    config = function()
        require("plugins.toggleterm")
    end
})

Plug("norcalli/nvim-colorizer.lua", {
    config = function()
        require("plugins.colorizer")
    end
})

Plug("akinsho/bufferline.nvim", {
    config = function()
        require("plugins.bufferline")
    end
})

Plug("catppuccin/nvim", {
    as = "catppuccin"
})

Plug "navarasu/onedark.nvim"

Plug.ends()
