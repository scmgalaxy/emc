$http_conf = '<h1 style="color:red">hello to the world of puppet </h1>'
if $facts['os']['family'] == 'RedHat'{


file {'/var/www/html/':
ensure => 'directory',
}

package {'httpd':
ensure => 'installed', #'absent', 'purged', 'latest','4.1'
provider => 'yum',
require => File['/var/www/html/']
}


service{'httpd':
ensure => 'running',
enable => true,
require => Package['httpd']
}


file {'/var/www/html/index.html':
ensure => 'file',
content => $http_conf,
require => Package['httpd']
}
}

else
{
  notify {"enjoy!":}

}

