return {
  -- Comment.nvim
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gc", mode = { "n", "v" }, desc = "Toggle comments" },
      { "gb", mode = { "n", "v" }, desc = "Toggle block comments" },
    },
    config = true,
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      provider = "deepseek",
      vendors = {
        deepseek = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-coder",
          max_tokens = 8192,
        },
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },

  {
    "Exafunction/windsurf.vim",
    event = "BufEnter",
  },

  -- dial.nvim
  {
    "monaqa/dial.nvim",
    keys = {
      {
        "<C-a>",
        function()
          return require("dial.map").inc_normal()
        end,
        expr = true,
        desc = "Increment",
      },
      {
        "<C-x>",
        function()
          return require("dial.map").dec_normal()
        end,
        expr = true,
        desc = "Decrement",
      },
      {
        "g<C-a>",
        function()
          return require("dial.map").inc_gnormal()
        end,
        expr = true,
        desc = "Multiline increment",
      },
      {
        "g<C-x>",
        function()
          return require("dial.map").dec_gnormal()
        end,
        expr = true,
        desc = "Multiline decrement",
      },
      {
        "<C-a>",
        function()
          return require("dial.map").inc_visual()
        end,
        mode = "v",
        expr = true,
        desc = "Increment",
      },
      {
        "<C-x>",
        function()
          return require("dial.map").dec_visual()
        end,
        mode = "v",
        expr = true,
        desc = "Decrement",
      },
      {
        "g<C-a>",
        function()
          return require("dial.map").inc_gvisual()
        end,
        mode = "v",
        expr = true,
        desc = "Multiline increment",
      },
      {
        "g<C-x>",
        function()
          return require("dial.map").dec_gvisual()
        end,
        mode = "v",
        expr = true,
        desc = "Multiline decrement",
      },
    },
    opts = function()
      local augend = require("dial.augend")

      local ordinal_numbers = augend.constant.new({
        elements = {
          "first",
          "second",
          "third",
          "fourth",
          "fifth",
          "sixth",
          "seventh",
          "eighth",
          "ninth",
          "tenth",
        },
        word = false,
        cyclic = true,
      })

      local weekdays = augend.constant.new({
        elements = {
          "Monday",
          "Tuesday",
          "Wednesday",
          "Thursday",
          "Friday",
          "Saturday",
          "Sunday",
        },
        word = true,
        cyclic = true,
      })

      local months = augend.constant.new({
        elements = {
          "January",
          "February",
          "March",
          "April",
          "May",
          "June",
          "July",
          "August",
          "September",
          "October",
          "November",
          "December",
        },
        word = true,
        cyclic = true,
      })

      local captialized_boolean = augend.constant.new({
        elements = {
          "True",
          "False",
        },
        word = true,
        cyclic = true,
      })

      return {
        default = {
          augend.integer.alias.decimal_int,
          augend.constant.alias.alpha,
          augend.constant.alias.Alpha,
          augend.integer.alias.hex,
          augend.date.alias["%m/%d/%Y"],
          augend.constant.alias.bool,
          augend.misc.alias.markdown_header,
          ordinal_numbers,
          weekdays,
          months,
          captialized_boolean,
          augend.constant.new({
            elements = { "&&", "||" },
            word = false,
            cyclic = true,
          }),
          augend.constant.new({
            elements = { "and", "or" },
            word = true,
            cyclic = true,
          }),
          augend.constant.new({
            elements = { "let", "const" },
            cyclic = true,
            word = true,
          }),
          augend.constant.new({
            elements = { "yes", "no" },
            word = true,
            cyclic = true,
          }),
          augend.hexcolor.new({
            case = "lower",
          }),
          augend.hexcolor.new({
            case = "upper",
          }),
        },
      }
    end,
    config = function(_, opts)
      require("dial.config").augends:register_group(opts)
    end,
  },

  -- blink.cmp
  {
    "saghen/blink.cmp",
    event = "InsertEnter",
    dependencies = "rafamadriz/friendly-snippets",
    version = "1.*",
    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
      enabled = function()
        return vim.bo.buftype ~= "prompt" and vim.b.completion ~= false
      end,
      fuzzy = {
        sorts = {
          "exact",
          "score",
          "sort_text",
        },
      },
      keymap = {
        ["<C-b>"] = { "scroll_documentation_up" },
        ["<C-f>"] = { "scroll_documentation_down" },
        ["<C-e>"] = { "hide" },
        ["<CR>"] = { "accept", "fallback" },
        ["<Tab>"] = {
          "select_next",
          "snippet_forward",
          "fallback",
        },
        ["<S-Tab>"] = {
          "select_prev",
          "snippet_backward",
          "fallback",
        },
        ["<C-Space>"] = {
          "show",
          "show_documentation",
          "hide_documentation",
        },
      },
      cmdline = {
        completion = {
          menu = { auto_show = true },
        },
      },
      completion = {
        accept = { auto_brackets = { enabled = true } },
        keyword = { range = "full" },
        ghost_text = { enabled = true },
        menu = {
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind", gap = 1 },
            },
          },
        },
      },
      signature = { enabled = true },
      sources = {
        default = {
          "lazydev",
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
    },
  },
}
