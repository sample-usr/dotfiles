{ ... }:
{
  programs.nixvim = {
    plugins.lint = {
      enable = true;

      lintersByFt = {
        json = [ "jsonlint" ];
        lua = [ "luacheck" ];
        nix = [ "nix" ];
        yaml = [ "yamllint" ];
      };
    };
  };
}
