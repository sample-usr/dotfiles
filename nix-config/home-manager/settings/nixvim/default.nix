{ pkgs, ... }:
{
  imports = [
    ./keymappings.nix

    ./plugins/fzf-lua.nix
    ./plugins/lsp.nix
    ./plugins/format.nix
    ./plugins/completion.nix
    ./plugins/neo-tree.nix
    ./plugins/git.nix
    ./plugins/lint.nix
    ./plugins/lualine.nix
  ];

  programs.nixvim = {
    enable = true;

    # Options
    opts = {
      number = true;
      relativenumber = true;
      incsearch = true;
      signcolumn = "yes";
      ignorecase = true;
      smartcase = true;
      cursorline = true;
      tabstop = 2; # Number of spaces a <Tab> in the text stands for (local to buffer)
      shiftwidth = 2; # Number of spaces used for each step of (auto)indent (local to buffer)
      softtabstop = 0; # If non-zero, number of spaces to insert for a <Tab> (local to buffer)
      expandtab = true; # Expand <Tab> to spaces in Insert mode (local to buffer)
      autoindent = true; # Do clever autoindenting
    };

    globals.mapleader = " ";
    globals.autoformat = true;

    colorschemes.catppuccin.enable = true;
    colorschemes.catppuccin.settings.flavour = "mocha";
    colorschemes.catppuccin.settings = {
      color_overrides = {
        mocha = {
          base = "#0C0807";
          crust = "#2B1C19";
          mantle = "#130C0A";
          text = "#FCE8C3";
          # blue = "#FF5F00";
          # lavender = "#C25600";
          # teal = "#0AAEB3";
          # sky = "#b04901";
          # rosewater = "#938684";
          # flamingo = "#796666";
          # pink = "#93748B";
          # red = "#ff8b44";
          # green = "#C4845A";
          # yellow = "#faac05";
          # maroon = "#a6596a";
          # peach = "#FAB418";
          # mauve = "#7f9aa7",
          # sapphire = "#394D72",
          #
          # -- defaults
          #
          # subtext1 = "#bac2de",
          # subtext0 = "#a6adc8",
          # overlay2 = "#9399b2",
          # overlay1 = "#7f849c",
          # overlay0 = "#6c7086",
          # surface2 = "#585b70",
          # surface1 = "#45475a",
          # surface0 = "#313244",
        };
      };
      integrations = {
        cmp = true;
        gitsigns = true;

        indent_blankline = {
          enabled = true;
        };
        # mini = {
        #   enabled = true;
        #   indentscope_color = "";
        # };
        # notify = false;
        neotree = true;
        treesitter = true;
      };
    };

    # Plugins
    plugins = {
      web-devicons.enable = true;
      nix.enable = true;
      hmts.enable = true;

      ts-autotag = {
        enable = true;
      };

      treesitter = {
        enable = true;
        settings = {
          highlight = {
            enable = true;
          };
        };
      };

      lazygit = {
        enable = true;
      };
    };

    extraPackages = with pkgs; [
      # Formatters
      typescript
      nixfmt-rfc-style
      prettierd
      stylua

      # Linters
      eslint_d
      html-tidy
      yamllint

      # Debuggers

      # nodePackages.prettier
      # rustfmt
      # shfmt
      # gitlint
      # golangci-lint
      # hadolint
      # luajitPackages.luacheck
      # markdownlint-cli
      # nodePackages.jsonlint
      # pylint
      # ruff
      # shellcheck
      # asm-lsp
      # bashdb
      # clang-tools
      # delve
      # fd
      # (if stdenv.isDarwin then null else gdb) # Not supported on MacOS
      # go
      # lldb_17
      # llvmPackages_17.bintools-unwrapped
      # marksman

      # (nerdfonts.override {
      #   fonts = [
      #     "JetBrainsMono"
      #     "RobotoMono"
      #   ];
      # })

      # python3
      # ripgrep
      # (if stdenv.isDarwin then null else rr) # Not supported on MacOS
      # tmux-sessionizer
      # typescript
      # zig
    ];
  };
}
