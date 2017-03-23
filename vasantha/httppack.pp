package {'httpd':
ensure => 'installed', #'absent', 'purged', 'latest','4.1'
provider => 'yum'
}

service{'httpd':
ensure => 'running',
enable => true,
}

$http_conf = '<h1 style="color:red">hello to the world of puppet </h1>'
file {'/var/www/html/index2.html':
ensure => 'file',
content => $http_conf,}
