return {
  "hrsh7th/nvim-cmp",
  config = function(_, opts)
    local cmp = require "cmp"
    opts.mapping["<CR>"] = cmp.mapping {
      i = function(fallback)
        if cmp.visible() and cmp.get_active_entry() then
          cmp.confirm { behavior = cmp.ConfirmBehavior.Replace, select = false }
        else
          fallback()
        end
      end,
      s = cmp.mapping.confirm { select = true },
      c = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true },
    }
    opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
      -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
        if not entry then
          cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
        end
        cmp.confirm()
      else
        fallback()
      end
    end, { "i", "s", "c" })
    require("cmp").setup(opts)
  end,
}
