if $facts['os']['family'] == 'RedHat'{
  file {'/var/www/html':
    ensure => 'directory',
  }
  package {'httpd':
     ensure => 'installed',
   }
  file {'/var/www/html/index.html':
       ensure    => 'file',
         content => 'testing',
   }
   service {'httpd':
     ensure => 'running',
   }}
   else {notify{'enjoy':}}
