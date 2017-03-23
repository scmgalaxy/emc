$httpd_conf = '<h1>Hello to the world of puppet</h1>'
file  { '/var/www/html/index.html':
ensure  => 'file',
content => $httpd_conf
}
service { 'firewalld':
  ensure => 'stopped',
}

