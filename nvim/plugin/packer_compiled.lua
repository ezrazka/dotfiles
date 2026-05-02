-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/macbookpro/.cache/nvim/packer_hererocks/2.1.1774896198/share/lua/5.1/?.lua;/Users/macbookpro/.cache/nvim/packer_hererocks/2.1.1774896198/share/lua/5.1/?/init.lua;/Users/macbookpro/.cache/nvim/packer_hererocks/2.1.1774896198/lib/luarocks/rocks-5.1/?.lua;/Users/macbookpro/.cache/nvim/packer_hererocks/2.1.1774896198/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/macbookpro/.cache/nvim/packer_hererocks/2.1.1774896198/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { "\27LJ\2\n˜\4\0\0\23\0\25\1J6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0B\1\2\0026\2\2\0009\2\3\0029\2\4\2'\4\6\0B\2\2\0026\3\2\0009\3\3\0039\3\a\3\18\5\2\0B\3\2\0026\4\b\0009\4\t\4\18\6\3\0'\a\n\0B\4\3\0026\5\2\0009\5\3\0059\5\v\5\18\a\4\0B\5\2\0024\6\0\0006\a\f\0\18\t\5\0B\a\2\4X\n\"€4\f\0\0006\r\r\0009\r\14\r\18\15\1\0009\16\15\v&\15\16\15B\r\2\4X\16\5€6\17\b\0009\17\16\17\18\19\f\0\18\20\16\0B\17\3\1E\16\3\2R\16ù\1276\r\b\0009\r\16\r\18\15\6\0009\16\17\0009\18\18\v4\19\3\0009\20\19\0\18\22\f\0B\20\2\2>\20\1\0199\20\20\0)\22\1\0B\20\2\0?\20\0\0005\20\22\0009\21\21\v=\21\21\20B\16\4\0A\r\1\1E\n\3\3R\nÜ\1279\a\23\0'\t\24\0\18\n\6\0B\a\3\1K\0\1\0\bcpp\17add_snippets\1\0\1\tdesc\0\tdesc\16insert_node\14text_node\ftrigger\fsnippet\vinsert\tfile\nlines\aio\vipairs\16json_decode\6\n\vconcat\ntable\rreadfile&~/.config/nvim/snippets/meta.json\"~/.config/nvim/snippets/body/\vexpand\afn\bvim\fluasnip\frequire\5€€À™\4\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    config = { "\27LJ\2\nŠ\1\0\0\3\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\20catppuccin-nvim\16colorscheme\bcmd\bvim\1\0\1\22auto_integrations\2\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["competitest.nvim"] = {
    config = { "\27LJ\2\nù\1\0\2\r\0\t\2/6\2\0\0009\2\1\2\18\4\0\0'\5\2\0+\6\2\0B\2\4\0026\3\0\0009\3\1\3\18\5\1\0'\6\2\0+\a\2\0B\3\4\2)\4\1\0008\5\4\2\15\0\5\0X\6\n€8\5\4\3\15\0\5\0X\6\a€8\5\4\0028\6\4\3\5\5\6\0X\5\3€U\5\2€\22\4\0\4X\5ó\1276\5\3\0009\5\4\5'\a\5\0\21\b\3\0!\b\4\b\22\b\0\bB\5\3\0026\6\6\0009\6\a\0064\b\3\0006\t\b\0\18\v\2\0\18\f\4\0B\t\3\0?\t\1\0'\t\2\0B\6\3\2\18\a\5\0\18\b\6\0&\a\b\aL\a\2\0\vunpack\vconcat\ntable\b../\brep\vstring\6/\nsplit\bvim\2\3€€À™\4Ò\b\1\0\n\0+\0_3\0\0\0006\1\1\0009\1\2\1'\3\3\0B\1\2\2\18\2\1\0'\3\4\0&\2\3\2\18\3\0\0\18\5\2\0006\6\5\0009\6\6\0069\6\a\6B\6\1\0A\3\1\0026\4\5\0009\4\6\0049\4\b\4\18\6\2\0'\a\t\0B\4\3\0016\4\n\0'\6\v\0B\4\2\0029\4\f\0045\6\18\0005\a\16\0005\b\r\0005\t\14\0=\t\15\b=\b\17\a=\a\19\0065\a\21\0005\b\20\0=\b\17\a=\a\22\6=\3\23\6B\4\2\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a\27\0'\b\28\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a\29\0'\b\30\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a\31\0'\b \0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a!\0'\b\"\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a#\0'\b$\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a%\0'\b&\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a'\0'\b(\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a)\0'\b*\0B\4\4\1K\0\1\0\":CompetiTest delete_testcase \15<leader>td :CompetiTest edit_testcase \15<leader>te&<cmd>CompetiTest add_testcase<CR>\15<leader>ta&<cmd>CompetiTest receive stop<CR>\15<leader>tR)<cmd>CompetiTest receive contest<CR>\16<leader>trc)<cmd>CompetiTest receive problem<CR>\16<leader>trp!<cmd>CompetiTest show_ui<CR>\15<leader>tu\29<cmd>CompetiTest run<CR>\15<leader>tt\6n\bset\vkeymap\24testcases_directory\16run_command\1\0\1\bcpp\0\1\0\1\texec\19/tmp/$(FNOEXT)\20compile_command\1\0\4\24testcases_directory\0\30testcases_use_single_file\2\20compile_command\0\16run_command\0\bcpp\1\0\1\bcpp\0\targs\1\6\0\0\15-std=c++17\b-O2\a-o\19/tmp/$(FNOEXT)\r$(FNAME)\1\0\2\targs\0\texec\vg++-14\nsetup\16competitest\frequire\6p\nmkdir\vgetcwd\afn\bvim:/Desktop/Coding/Competitive Programming/Testcase Dump\tHOME\vgetenv\aos\0\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/competitest.nvim",
    url = "https://github.com/xeluxee/competitest.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1€4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0À\bset\vkeymap\bvim\vbuffer1\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\1À\1\0\1\tfull\2\15blame_linen\0\0\6\1\6\1\17-\0\0\0009\0\0\0004\2\3\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2>\3\1\0026\3\1\0009\3\2\0039\3\3\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\1À\6v\6.\tline\afn\bvim\15stage_hunk\5€€À™\4n\0\0\6\1\6\1\17-\0\0\0009\0\0\0004\2\3\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2>\3\1\0026\3\1\0009\3\2\0039\3\3\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\1À\6v\6.\tline\afn\bvim\15reset_hunk\5€€À™\4{\0\0\3\1\b\0\0166\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\6€6\0\0\0009\0\3\0009\0\4\0005\2\5\0B\0\2\1X\0\4€-\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\1À\tnext\rnav_hunk\1\2\1\0\a]c\tbang\2\vnormal\bcmd\tdiff\awo\bvim{\0\0\3\1\b\0\0166\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\6€6\0\0\0009\0\3\0009\0\4\0005\2\5\0B\0\2\1X\0\4€-\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\1À\tprev\rnav_hunk\1\2\1\0\a[c\tbang\2\vnormal\bcmd\tdiff\awo\bvimÞ\3\1\1\b\0\28\0B6\1\0\0'\3\1\0B\1\2\0023\2\2\0\18\3\2\0'\5\3\0'\6\4\0009\a\5\1B\3\4\1\18\3\2\0'\5\3\0'\6\6\0009\a\a\1B\3\4\1\18\3\2\0'\5\3\0'\6\b\0003\a\t\0B\3\4\1\18\3\2\0'\5\3\0'\6\n\0009\a\v\1B\3\4\1\18\3\2\0'\5\3\0'\6\f\0009\a\r\1B\3\4\1\18\3\2\0'\5\14\0'\6\n\0003\a\15\0B\3\4\1\18\3\2\0'\5\14\0'\6\f\0003\a\16\0B\3\4\1\18\3\2\0'\5\3\0'\6\17\0009\a\18\1B\3\4\1\18\3\2\0'\5\3\0'\6\19\0009\a\20\1B\3\4\1\18\3\2\0'\5\3\0'\6\21\0003\a\22\0B\3\4\1\18\3\2\0'\5\3\0'\6\23\0003\a\24\0B\3\4\1\18\3\2\0005\5\25\0'\6\26\0009\a\27\1B\3\4\0012\0\0€K\0\1\0\16select_hunk\aih\1\3\0\0\6o\6x\0\a[c\0\a]c\17reset_buffer\15<leader>gR\17stage_buffer\15<leader>gS\0\0\6v\15reset_hunk\15<leader>gr\15stage_hunk\15<leader>gs\0\15<leader>gb\17preview_hunk\15<leader>gp\17toggle_signs\15<leader>gg\6n\0\rgitsigns\frequireg\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\0\1\0\2\14on_attach\0\15signcolumn\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    config = { "\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\5\0B\0\2\1K\0\1\0\1À\rnav_file‰\3\1\0\a\0\21\00096\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\1B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0003\6\f\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0003\6\16\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0003\6\18\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\19\0003\6\20\0B\2\4\0012\0\0€K\0\1\0\0\15<leader>h5\0\15<leader>h4\0\15<leader>h3\0\15<leader>h2\0\15<leader>h1\radd_file\15<leader>ha\22toggle_quick_menu\15<leader>hh\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\2\ntheme\20catppuccin-nvim\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÒ\2\0\0\6\0\16\0\0296\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\0025\4\4\0005\5\5\0B\2\3\2:\2\1\2\14\0\2\0X\3\5€6\2\0\0009\2\6\0029\2\a\2)\4\0\0B\2\2\2B\0\2\0026\1\0\0009\1\b\0019\1\t\0015\3\n\0005\4\v\0=\4\f\0035\4\r\0=\4\14\3=\0\15\3B\1\2\1K\0\1\0\rroot_dir\14filetypes\1\5\0\0\6c\bcpp\tobjc\vobjcpp\bcmd\1\2\0\0#/usr/local/opt/llvm/bin/clangd\1\0\4\bcmd\0\tname\vclangd\rroot_dir\0\14filetypes\0\nstart\blsp\22nvim_buf_get_name\bapi\1\0\1\vupward\2\1\3\0\0\26compile_commands.json\t.git\tfind\fdirname\afs\bvimÏ\5\1\0\n\0)\0?6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0049\4\n\0045\6\f\0009\a\b\0009\a\v\aB\a\1\2=\a\r\0069\a\b\0009\a\14\a5\t\15\0B\a\2\2=\a\16\0069\a\b\0009\a\17\aB\a\1\2=\a\18\0069\a\b\0009\a\19\aB\a\1\2=\a\20\0069\a\b\0009\a\21\aB\a\1\2=\a\22\6B\4\2\2=\4\b\0039\4\23\0009\4\24\0044\6\4\0005\a\25\0>\a\1\0065\a\26\0>\a\2\0065\a\27\0>\a\3\6B\4\2\2=\4\24\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3B\1\2\0016\1 \0009\1!\0019\1\"\1'\3#\0005\4%\0005\5$\0=\5&\0043\5'\0=\5(\4B\1\3\1K\0\1\0\rcallback\0\fpattern\1\0\2\rcallback\0\fpattern\0\1\5\0\0\6c\bcpp\tobjc\vobjcpp\rFileType\24nvim_create_autocmd\bapi\bvim\vwindow\15completion\1\0\1\15completion\0\1\0\1\15max_height\3\b\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\21select_prev_item\n<Tab>\21select_next_item\n<C-e>\nabort\t<CR>\1\0\1\vselect\2\fconfirm\14<C-Space>\1\0\5\t<CR>\0\f<S-Tab>\0\n<C-e>\0\n<Tab>\0\14<C-Space>\0\rcomplete\vinsert\vpreset\fmapping\fsnippet\1\0\4\fmapping\0\vwindow\0\fsnippet\0\fsources\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\né\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\3\14highlight\0\vindent\0\21ensure_installed\0\1\b\0\0\blua\6c\bcpp\vpython\thtml\bcss\15javascript\nsetup\27nvim-treesitter.config\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oil.nvim"] = {
    config = { "\27LJ\2\n”\4\0\0\5\0\24\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0B\0\4\1K\0\1\0\17<cmd>Oil<CR>\14<leader>e\6n\bset\vkeymap\bvim\17keymaps_help\1\0\1\vborder\frounded\bssh\1\0\1\vborder\frounded\rprogress\1\0\1\vborder\frounded\17confirmation\1\0\1\vborder\frounded\nfloat\1\0\1\vborder\frounded\17view_options\1\0\1\16show_hidden\2\16win_options\1\0\b\26default_file_explorer\2\17keymaps_help\0\bssh\0\16win_options\0\17confirmation\0\nfloat\0\rprogress\0\17view_options\0\1\0\3\19relativenumber\1\vwinbar.%{v:lua.require(\"oil\").get_current_dir()}\vnumber\1\nsetup\boil\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nn\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\0À\vsearch\1\0\1\vsearch\0\18Grep string: \ninput\afn\bvim\16grep_string—\2\1\0\a\0\14\0\0286\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0005\6\b\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\t\0009\5\n\0005\6\v\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0003\5\r\0B\1\4\0012\0\0€K\0\1\0\0\15<leader>fs\1\0\1\tdesc\29Telescope find git files\14git_files\15<leader>fg\1\0\1\tdesc\25Telescope find files\15find_files\15<leader>ff\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n]\0\0\5\0\a\0\n6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\1K\0\1\0\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\n0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17vertical Git\bcmd\bvimE\1\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0B\0\4\1K\0\1\0\0\16<leader>git\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/macbookpro/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\né\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\3\14highlight\0\vindent\0\21ensure_installed\0\1\b\0\0\blua\6c\bcpp\vpython\thtml\bcss\15javascript\nsetup\27nvim-treesitter.config\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nn\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\5\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\0À\vsearch\1\0\1\vsearch\0\18Grep string: \ninput\afn\bvim\16grep_string—\2\1\0\a\0\14\0\0286\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0005\6\b\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\t\0009\5\n\0005\6\v\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0003\5\r\0B\1\4\0012\0\0€K\0\1\0\0\15<leader>fs\1\0\1\tdesc\29Telescope find git files\14git_files\15<leader>fg\1\0\1\tdesc\25Telescope find files\15find_files\15<leader>ff\6n\bset\vkeymap\bvim\22telescope.builtin\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\1\foptions\0\1\0\2\ntheme\20catppuccin-nvim\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n]\0\0\5\0\a\0\n6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\0\0009\4\5\0049\4\6\4B\0\4\1K\0\1\0\19UndotreeToggle\bcmd\14<leader>u\6n\bset\vkeymap\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n˜\4\0\0\23\0\25\1J6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0B\1\2\0026\2\2\0009\2\3\0029\2\4\2'\4\6\0B\2\2\0026\3\2\0009\3\3\0039\3\a\3\18\5\2\0B\3\2\0026\4\b\0009\4\t\4\18\6\3\0'\a\n\0B\4\3\0026\5\2\0009\5\3\0059\5\v\5\18\a\4\0B\5\2\0024\6\0\0006\a\f\0\18\t\5\0B\a\2\4X\n\"€4\f\0\0006\r\r\0009\r\14\r\18\15\1\0009\16\15\v&\15\16\15B\r\2\4X\16\5€6\17\b\0009\17\16\17\18\19\f\0\18\20\16\0B\17\3\1E\16\3\2R\16ù\1276\r\b\0009\r\16\r\18\15\6\0009\16\17\0009\18\18\v4\19\3\0009\20\19\0\18\22\f\0B\20\2\2>\20\1\0199\20\20\0)\22\1\0B\20\2\0?\20\0\0005\20\22\0009\21\21\v=\21\21\20B\16\4\0A\r\1\1E\n\3\3R\nÜ\1279\a\23\0'\t\24\0\18\n\6\0B\a\3\1K\0\1\0\bcpp\17add_snippets\1\0\1\tdesc\0\tdesc\16insert_node\14text_node\ftrigger\fsnippet\vinsert\tfile\nlines\aio\vipairs\16json_decode\6\n\vconcat\ntable\rreadfile&~/.config/nvim/snippets/meta.json\"~/.config/nvim/snippets/body/\vexpand\afn\bvim\fluasnip\frequire\5€€À™\4\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n”\4\0\0\5\0\24\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0'\2\21\0'\3\22\0'\4\23\0B\0\4\1K\0\1\0\17<cmd>Oil<CR>\14<leader>e\6n\bset\vkeymap\bvim\17keymaps_help\1\0\1\vborder\frounded\bssh\1\0\1\vborder\frounded\rprogress\1\0\1\vborder\frounded\17confirmation\1\0\1\vborder\frounded\nfloat\1\0\1\vborder\frounded\17view_options\1\0\1\16show_hidden\2\16win_options\1\0\b\26default_file_explorer\2\17keymaps_help\0\bssh\0\16win_options\0\17confirmation\0\nfloat\0\rprogress\0\17view_options\0\1\0\3\19relativenumber\1\vwinbar.%{v:lua.require(\"oil\").get_current_dir()}\vnumber\1\nsetup\boil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17vertical Git\bcmd\bvimE\1\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0003\4\5\0B\0\4\1K\0\1\0\0\16<leader>git\6n\bset\vkeymap\bvim\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1€4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0À\bset\vkeymap\bvim\vbuffer1\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\1À\1\0\1\tfull\2\15blame_linen\0\0\6\1\6\1\17-\0\0\0009\0\0\0004\2\3\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2>\3\1\0026\3\1\0009\3\2\0039\3\3\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\1À\6v\6.\tline\afn\bvim\15stage_hunk\5€€À™\4n\0\0\6\1\6\1\17-\0\0\0009\0\0\0004\2\3\0006\3\1\0009\3\2\0039\3\3\3'\5\4\0B\3\2\2>\3\1\0026\3\1\0009\3\2\0039\3\3\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\1À\6v\6.\tline\afn\bvim\15reset_hunk\5€€À™\4{\0\0\3\1\b\0\0166\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\6€6\0\0\0009\0\3\0009\0\4\0005\2\5\0B\0\2\1X\0\4€-\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\1À\tnext\rnav_hunk\1\2\1\0\a]c\tbang\2\vnormal\bcmd\tdiff\awo\bvim{\0\0\3\1\b\0\0166\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\6€6\0\0\0009\0\3\0009\0\4\0005\2\5\0B\0\2\1X\0\4€-\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\1À\tprev\rnav_hunk\1\2\1\0\a[c\tbang\2\vnormal\bcmd\tdiff\awo\bvimÞ\3\1\1\b\0\28\0B6\1\0\0'\3\1\0B\1\2\0023\2\2\0\18\3\2\0'\5\3\0'\6\4\0009\a\5\1B\3\4\1\18\3\2\0'\5\3\0'\6\6\0009\a\a\1B\3\4\1\18\3\2\0'\5\3\0'\6\b\0003\a\t\0B\3\4\1\18\3\2\0'\5\3\0'\6\n\0009\a\v\1B\3\4\1\18\3\2\0'\5\3\0'\6\f\0009\a\r\1B\3\4\1\18\3\2\0'\5\14\0'\6\n\0003\a\15\0B\3\4\1\18\3\2\0'\5\14\0'\6\f\0003\a\16\0B\3\4\1\18\3\2\0'\5\3\0'\6\17\0009\a\18\1B\3\4\1\18\3\2\0'\5\3\0'\6\19\0009\a\20\1B\3\4\1\18\3\2\0'\5\3\0'\6\21\0003\a\22\0B\3\4\1\18\3\2\0'\5\3\0'\6\23\0003\a\24\0B\3\4\1\18\3\2\0005\5\25\0'\6\26\0009\a\27\1B\3\4\0012\0\0€K\0\1\0\16select_hunk\aih\1\3\0\0\6o\6x\0\a[c\0\a]c\17reset_buffer\15<leader>gR\17stage_buffer\15<leader>gS\0\0\6v\15reset_hunk\15<leader>gr\15stage_hunk\15<leader>gs\0\15<leader>gb\17preview_hunk\15<leader>gp\17toggle_signs\15<leader>gg\6n\0\rgitsigns\frequireg\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\0\1\0\2\14on_attach\0\15signcolumn\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: harpoon
time([[Config for harpoon]], true)
try_loadstring("\27LJ\2\n&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\2\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\3\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\4\0B\0\2\1K\0\1\0\1À\rnav_file&\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\5\0B\0\2\1K\0\1\0\1À\rnav_file‰\3\1\0\a\0\21\00096\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0009\6\b\1B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\t\0009\6\n\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\v\0003\6\f\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\r\0003\6\14\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\15\0003\6\16\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\17\0003\6\18\0B\2\4\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\19\0003\6\20\0B\2\4\0012\0\0€K\0\1\0\0\15<leader>h5\0\15<leader>h4\0\15<leader>h3\0\15<leader>h2\0\15<leader>h1\radd_file\15<leader>ha\22toggle_quick_menu\15<leader>hh\6n\bset\vkeymap\bvim\15harpoon.ui\17harpoon.mark\frequire\0", "config", "harpoon")
time([[Config for harpoon]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireÒ\2\0\0\6\0\16\0\0296\0\0\0009\0\1\0009\0\2\0006\2\0\0009\2\1\0029\2\3\0025\4\4\0005\5\5\0B\2\3\2:\2\1\2\14\0\2\0X\3\5€6\2\0\0009\2\6\0029\2\a\2)\4\0\0B\2\2\2B\0\2\0026\1\0\0009\1\b\0019\1\t\0015\3\n\0005\4\v\0=\4\f\0035\4\r\0=\4\14\3=\0\15\3B\1\2\1K\0\1\0\rroot_dir\14filetypes\1\5\0\0\6c\bcpp\tobjc\vobjcpp\bcmd\1\2\0\0#/usr/local/opt/llvm/bin/clangd\1\0\4\bcmd\0\tname\vclangd\rroot_dir\0\14filetypes\0\nstart\blsp\22nvim_buf_get_name\bapi\1\0\1\vupward\2\1\3\0\0\26compile_commands.json\t.git\tfind\fdirname\afs\bvimÏ\5\1\0\n\0)\0?6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0039\4\b\0009\4\t\0049\4\n\0045\6\f\0009\a\b\0009\a\v\aB\a\1\2=\a\r\0069\a\b\0009\a\14\a5\t\15\0B\a\2\2=\a\16\0069\a\b\0009\a\17\aB\a\1\2=\a\18\0069\a\b\0009\a\19\aB\a\1\2=\a\20\0069\a\b\0009\a\21\aB\a\1\2=\a\22\6B\4\2\2=\4\b\0039\4\23\0009\4\24\0044\6\4\0005\a\25\0>\a\1\0065\a\26\0>\a\2\0065\a\27\0>\a\3\6B\4\2\2=\4\24\0035\4\29\0005\5\28\0=\5\30\4=\4\31\3B\1\2\0016\1 \0009\1!\0019\1\"\1'\3#\0005\4%\0005\5$\0=\5&\0043\5'\0=\5(\4B\1\3\1K\0\1\0\rcallback\0\fpattern\1\0\2\rcallback\0\fpattern\0\1\5\0\0\6c\bcpp\tobjc\vobjcpp\rFileType\24nvim_create_autocmd\bapi\bvim\vwindow\15completion\1\0\1\15completion\0\1\0\1\15max_height\3\b\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\21select_prev_item\n<Tab>\21select_next_item\n<C-e>\nabort\t<CR>\1\0\1\vselect\2\fconfirm\14<C-Space>\1\0\5\t<CR>\0\f<S-Tab>\0\n<C-e>\0\n<Tab>\0\14<C-Space>\0\rcomplete\vinsert\vpreset\fmapping\fsnippet\1\0\4\fmapping\0\vwindow\0\fsnippet\0\fsources\0\vexpand\1\0\1\vexpand\0\0\nsetup\bcmp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: competitest.nvim
time([[Config for competitest.nvim]], true)
try_loadstring("\27LJ\2\nù\1\0\2\r\0\t\2/6\2\0\0009\2\1\2\18\4\0\0'\5\2\0+\6\2\0B\2\4\0026\3\0\0009\3\1\3\18\5\1\0'\6\2\0+\a\2\0B\3\4\2)\4\1\0008\5\4\2\15\0\5\0X\6\n€8\5\4\3\15\0\5\0X\6\a€8\5\4\0028\6\4\3\5\5\6\0X\5\3€U\5\2€\22\4\0\4X\5ó\1276\5\3\0009\5\4\5'\a\5\0\21\b\3\0!\b\4\b\22\b\0\bB\5\3\0026\6\6\0009\6\a\0064\b\3\0006\t\b\0\18\v\2\0\18\f\4\0B\t\3\0?\t\1\0'\t\2\0B\6\3\2\18\a\5\0\18\b\6\0&\a\b\aL\a\2\0\vunpack\vconcat\ntable\b../\brep\vstring\6/\nsplit\bvim\2\3€€À™\4Ò\b\1\0\n\0+\0_3\0\0\0006\1\1\0009\1\2\1'\3\3\0B\1\2\2\18\2\1\0'\3\4\0&\2\3\2\18\3\0\0\18\5\2\0006\6\5\0009\6\6\0069\6\a\6B\6\1\0A\3\1\0026\4\5\0009\4\6\0049\4\b\4\18\6\2\0'\a\t\0B\4\3\0016\4\n\0'\6\v\0B\4\2\0029\4\f\0045\6\18\0005\a\16\0005\b\r\0005\t\14\0=\t\15\b=\b\17\a=\a\19\0065\a\21\0005\b\20\0=\b\17\a=\a\22\6=\3\23\6B\4\2\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a\27\0'\b\28\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a\29\0'\b\30\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a\31\0'\b \0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a!\0'\b\"\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a#\0'\b$\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a%\0'\b&\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a'\0'\b(\0B\4\4\0016\4\5\0009\4\24\0049\4\25\4'\6\26\0'\a)\0'\b*\0B\4\4\1K\0\1\0\":CompetiTest delete_testcase \15<leader>td :CompetiTest edit_testcase \15<leader>te&<cmd>CompetiTest add_testcase<CR>\15<leader>ta&<cmd>CompetiTest receive stop<CR>\15<leader>tR)<cmd>CompetiTest receive contest<CR>\16<leader>trc)<cmd>CompetiTest receive problem<CR>\16<leader>trp!<cmd>CompetiTest show_ui<CR>\15<leader>tu\29<cmd>CompetiTest run<CR>\15<leader>tt\6n\bset\vkeymap\24testcases_directory\16run_command\1\0\1\bcpp\0\1\0\1\texec\19/tmp/$(FNOEXT)\20compile_command\1\0\4\24testcases_directory\0\30testcases_use_single_file\2\20compile_command\0\16run_command\0\bcpp\1\0\1\bcpp\0\targs\1\6\0\0\15-std=c++17\b-O2\a-o\19/tmp/$(FNOEXT)\r$(FNAME)\1\0\2\targs\0\texec\vg++-14\nsetup\16competitest\frequire\6p\nmkdir\vgetcwd\afn\bvim:/Desktop/Coding/Competitive Programming/Testcase Dump\tHOME\vgetenv\aos\0\0", "config", "competitest.nvim")
time([[Config for competitest.nvim]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nŠ\1\0\0\3\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\20catppuccin-nvim\16colorscheme\bcmd\bvim\1\0\1\22auto_integrations\2\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
