return {
    "prettier/vim-prettier",
    build = "yarn install --frozen-lockfile --production",
    ft = {
        'javascript',
        'typescript',
        'css',
        'less',
        'scss',
        'json',
        'graphql',
        'markdown',
        'vue',
        'svelte',
        'yaml',
        'html'
    },
}
