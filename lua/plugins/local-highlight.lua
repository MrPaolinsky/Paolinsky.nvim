return {
    'tzachar/local-highlight.nvim',
    config = function()
        require('local-highlight').setup()
    end,

    min_match_len = 1,
    max_match_len = math.huge,
    animate = {
        enabled = false
    }
}
