{ pkgs, ... }: {
  programs.zellij = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      pane_frames = false;
      simplified_ui = true;
      default_layout = "compact";

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
