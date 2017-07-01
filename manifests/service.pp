# == Class: bareos::service
class bareos::service inherits bareos {

  service { 'bareos-dir': ensure => running, }
  service { 'bareos-fd': ensure => running, }
  service { 'bareos-sd': ensure => running, }
  service { 'apache2': ensure => running, }
}
