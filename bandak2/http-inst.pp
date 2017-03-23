package {'httpd':
	ensure => 'installed',
	name => 'httpd',
	}
service {'httpd':
	ensure => 'running',
	name => 'httpd',
	enable => true,
	}
file {'start httpd':
	ensure => 'present',
	content => '<h1>Hello, World of Puppet</h1>',
	path => '/var/www/html/index.html',
	}
