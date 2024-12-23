{ config, ... }:

{
  home.file.".config/karabiner" = {
    source = config.lib.file.mkOutOfStoreSymlink ./config;
  };
}
