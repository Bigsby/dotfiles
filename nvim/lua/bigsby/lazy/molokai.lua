return {
    'UtkarshVerma/molokai.nvim',
    config = function()
        require("lualine").setup {
            theme = "molokai"
        }
        vim.cmd[[colorscheme molokai]]
    end
}
