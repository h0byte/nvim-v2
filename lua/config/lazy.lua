local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- notify on update
  }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

require("comfy-line-numbers").setup({
  -- options
  labels = {
    "1",
    "2",
    "3",
    "4",
    "5",
    "11",
    "12",
    "13",
    "14",
    "15",
    "21",
    "22",
    "23",
    "24",
    "25",
    "31",
    "32",
    "33",
    "34",
    "35",
    "41",
    "42",
    "43",
    "44",
    "45",
    "51",
    "52",
    "53",
    "54",
    "55",
    "111",
    "112",
    "113",
    "114",
    "115",
    "121",
    "122",
    "123",
    "124",
    "125",
    "131",
    "132",
    "133",
    "134",
    "135",
    "141",
    "142",
    "143",
    "144",
    "145",
    "151",
    "152",
    "153",
    "154",
    "155",
    "211",
    "212",
    "213",
    "214",
    "215",
    "221",
    "222",
    "223",
    "224",
    "225",
    "231",
    "232",
    "233",
    "234",
    "235",
    "241",
    "242",
    "243",
    "244",
    "245",
    "251",
    "252",
    "253",
    "254",
    "255",
  },
})
