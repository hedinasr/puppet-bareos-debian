# == Class: bareos::install
class bareos::install inherits bareos {

  $packages = [ 'bareos-database-mysql',
                'bareos',
                'bareos-webui' ]

  include apt

  # cette commande est nécessaire sinon le module mysql plante car la liste des
  # paquets n'est pas à jour.
  exec { 'apt-update':
    command => '/usr/bin/apt-get update',
  }

  class { '::mysql::server': require => Exec['apt-update'], }
  -> apt::source { 'bareos':
    location => 'http://download.bareos.org/bareos/release/latest/Debian_8.0/',
    repos    => '',
    release  => '/',
    key      => {
      'id'     => '0143857D9CE8C2D182FE2631F93C028C093BFBA2',
      'source' => 'http://download.bareos.org/bareos/release/latest/Debian_8.0/Release.key',
    }
  } -> package { $packages: ensure => installed }
}
