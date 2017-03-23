if $facts['os']['family'] == 'RedHat' {
   file { '/var/www/html':
    ensure => 'directory',}
    package { 'httpd':
      ensure => 'installed',
    }
    file  { '/var/www/html/index1.html':
      ensure  => 'file',
      content => "abc",
    }
    service { 'httpd':
        ensure   => 'running',
          enable => 'true',
    }
  
}
else { notify {'Enjoy':}}
