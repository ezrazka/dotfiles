return {
    -- CompetiTest (prefix: t)
    {
        "xeluxee/competitest.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim"
        },
        config = function()
            local cp_dir = "/Desktop/Coding/Competitive Programming"
            local function in_cp_dir()
                local home = os.getenv("HOME")
                local cwd = vim.fn.getcwd()
                return cwd:find(home .. cp_dir, 1, true) ~= nil
            end

            if not in_cp_dir() then
                return
            end

            local function make_relative(abs_path, root_dir)
                local path_parts = vim.split(abs_path, "/", true)
                local root_parts = vim.split(root_dir, "/", true)

                local i = 1
                while path_parts[i] and root_parts[i] and path_parts[i] == root_parts[i] do
                    i = i + 1
                end

                local backtrack_path = string.rep("../", #root_parts - i + 1)
                local remaining_path = table.concat({ unpack(path_parts, i) }, "/")

                return backtrack_path .. remaining_path
            end

            local home = os.getenv("HOME")
            local abs_path = home .. cp_dir .. "/Testcase Dump"
            local testcase_dir = make_relative(abs_path, vim.fn.getcwd())
            vim.fn.mkdir(abs_path, "p")
            
            require("competitest").setup({
                compile_command = {
                    cpp = { exec = "g++-14", args = { "-std=c++23", "-O2", "-o", "/tmp/$(FNOEXT)", "$(FNAME)" } }
                },
                run_command = {
                    cpp = { exec = "/tmp/$(FNOEXT)" }
                },
                testcases_directory = testcase_dir,
                testcases_use_single_file = true
            })

            vim.keymap.set("n", "<leader>tt", "<cmd>CompetiTest run<CR>")
            vim.keymap.set("n", "<leader>tu", "<cmd>CompetiTest show_ui<CR>")
            vim.keymap.set("n", "<leader>trp", "<cmd>CompetiTest receive problem<CR>")
            vim.keymap.set("n", "<leader>trc", "<cmd>CompetiTest receive contest<CR>")
            vim.keymap.set("n", "<leader>tR", "<cmd>CompetiTest receive stop<CR>")
            vim.keymap.set("n", "<leader>ta", "<cmd>CompetiTest add_testcase<CR>")
            vim.keymap.set("n", "<leader>te", ":CompetiTest edit_testcase ")
            vim.keymap.set("n", "<leader>td", ":CompetiTest delete_testcase ")
        end
    },

    -- LuaSnip
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip"
        },
        config = function()
            local cp_dir = "/Desktop/Coding/Competitive Programming"
            local function in_cp_dir()
                local home = os.getenv("HOME")
                local cwd = vim.fn.getcwd()
                return cwd:find(home .. cp_dir, 1, true) ~= nil
            end

            if not in_cp_dir() then
                return
            end

            local ls = require("luasnip")

            local body_dir = vim.fn.expand("~/.config/nvim/snippets/body/")
            local meta_path = vim.fn.expand("~/.config/nvim/snippets/meta.json")

            local json_lines = vim.fn.readfile(meta_path)
            local json_string = table.concat(json_lines, "\n")
            local snippets_list = vim.fn.json_decode(json_string)

            local snippets = {}
            for _, entry in ipairs(snippets_list) do
                local lines = {}
                for line in io.lines(body_dir .. entry.file) do
                    table.insert(lines, line)
                end
                table.insert(snippets, ls.snippet(
                    { trig = entry.trigger, name = entry.desc },
                    { ls.text_node(lines), ls.insert_node(1) }
                ))
            end

            ls.add_snippets("cpp", snippets)
        end
    }
}
