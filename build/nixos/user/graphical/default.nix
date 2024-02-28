{ pkgs, config, gtkThemeFromScheme, ... }:

{
  # Configure Cursor Theme
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 24;
  };

  # Theme GTK
  gtk = {
    enable = true;
    theme = {
       name = "rose-pine-moon-gtk";   
      package = pkgs.rose-pine-gtk-theme;   
    }; 

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    }; 

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme=1;
    }; 

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme=1;
    }; 

  };

  # Theme QT -> GTK
  qt = {
    enable = true;
    platformTheme = "gtk";
    style = {
        name = "adwaita-dark";
        package = pkgs.adwaita-qt;
    };
  };
}

