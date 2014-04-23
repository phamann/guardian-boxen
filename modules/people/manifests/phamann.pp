class people::phamann {

  #Apps

  include spotify
  include btsync
  include divvy
  include alfred
  include vlc
  include heroku
  include licecap
  include skype

  #OSX defaults
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::finder::show_all_on_desktop
  include osx::finder::show_hidden_files
  include osx::finder::enable_quicklook_text_selection
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom
  
  #Vars

  $home     = "/Users/${::boxen_user}"
  $sync     = "${home}/Sync"
  $dotfiles = "${home}/dotfiles"

  #Sync folder for BTSync

  file { $sync:
    ensure  => directory
  }

  #Dotfiles

  repository { $dotfiles:
    source  => 'phamann/dotfiles'
  }
}