include puppet_vim
service { 'puppet':
           ensure => 'stopped',
           enable => false,
}
