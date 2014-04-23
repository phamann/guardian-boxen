class projects::frontend {
  include java

  #Vars

  $home     = "/Users/${::boxen_user}"
  $projects = "${home}/Projects"
  $frontend = "${projects}/frontend"


  boxen::project { 'frontend':
    dir           => $frontend,
    nginx         => true,
    memcached     => true,
    ruby          => '2.1.1',
    node          => '0.10',
    source        => 'guardian/frontend'
  }
}