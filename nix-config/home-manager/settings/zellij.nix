{ pkgs, ... }: {
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      pane_frames = false;
      simplified_ui = true;
      default_layout = "compact";
      themes = {
        rakis ={
          bg = "#0c0908";
          fg = "#ae8069";
          black = "#271915";
          red = "#e83c30";
          green = "#5d895b";
          yellow = "#f2a50c";
          blue = "#3386c1";
          magenta = "#994b52";
          cyan = "#3d888e";
          white = "#ae8069";
          orange = "#d66000";
        };
      };
      theme = "rakis";

      keybinds = {
        normal = {
          "unbind \"Ctrl o\"" = [];
          "unbind \"Ctrl p\"" = [];
          "unbind \"Ctrl q\"" = [];
          "unbind \"Ctrl h\"" = [];
          "unbind \"Ctrl n\"" = [];
        };
        pane = {
          "bind \"Ctrl a\"" = {
            SwitchToMode = "Normal";
          };
          "bind \"h\" \"Left\"" = {
            MoveFocus = "Left";
            SwitchToMode = "Normal";
          };
          "bind \"l\" \"Right\"" = {
            MoveFocus = "Right";
            SwitchToMode = "Normal";
          };
          "bind \"j\" \"Down\"" = {
            MoveFocus = "Down";
            SwitchToMode = "Normal";
          };
          "bind \"k\" \"Up\"" = {
            MoveFocus = "Up";
            SwitchToMode = "Normal";
          };
          "bind \"n\"" = {
            NewPane = [];
            SwitchToMode = "Normal";
          };
          "bind \"p\"" = {
            SwitchFocus = [];
            SwitchToMode = "Normal";
          };
          "bind \"x\"" = {
            CloseFocus = [];
            SwitchToMode = "Normal";
          };
        };
        session = {
          "bind \"Ctrl x\"" = {
            SwitchToMode = "Normal";
          };
        };
        "shared_except \"pane\" \"locked\"" = {
          "bind \"Ctrl a\"" = {
            SwitchToMode = "Pane";
          };
        };
        "shared_except \"session\" \"locked\"" = {
          "bind \"Ctrl x\"" = {
            SwitchToMode = "Session";
          };
        };
      };
    };
  };
}
