{ ... }:
{
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        settings = {
          snippet = {
            expand =
              # lua
              "function(args) require('luasnip').lsp_expand(args.body) end";
          };
          mapping = {
            __raw =
              # lua
              ''
                cmp.mapping.preset.insert({
                		['<C-d>'] = cmp.mapping.scroll_docs(-4),
                		['<C-f>'] = cmp.mapping.scroll_docs(4),
                		['<C-e>'] = cmp.mapping.close(),
                		['<C-space>'] = cmp.mapping.complete(),
                		['<C-y>'] = cmp.mapping.confirm({ select = true }),
                	})
              '';
          };
          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "buffer"; }
          ];
        };
      };
      cmp-buffer.enable = true;
      cmp-nvim-lsp.enable = true;
      cmp-path.enable = true;
    };
  };
}
