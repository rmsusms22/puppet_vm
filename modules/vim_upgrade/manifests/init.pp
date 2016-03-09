class vim_upgrade {
  package { 'vim' :
    ensure => '2.7.4.052-1ubuntu3',
  }

  file { 'vimrc' :
    name => '/home/dongkim/.vimrc',
         owner => dongkim,
         group => dongkim,
         mode => 666,
         source => 'puppet://modules/vim_upgrade/.vimrc',
         require => Package['vim'],
  }
}

