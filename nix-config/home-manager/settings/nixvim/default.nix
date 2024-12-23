{ pkgs, ... }:
{
  imports = [
    ./keymappings.nix

    ./plugins/fzf-lua.nix
    ./plugins/lsp.nix
    ./plugins/format.nix
    ./plugins/completion.nix
    ./plugins/neo-tree.nix
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

      oil = {
        enable = true;
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
