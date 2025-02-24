return {
    "EdenEast/nightfox.nvim",
    name = "nightfox",
    priority = 1000,

    config = function()
        -- Require nightfox
        require("nightfox").setup()
        -- Set the colorscheme to carbonfox
        vim.cmd.colorscheme "carbonfox"
    end
}

