file { 'Message File':
        ensure => 'present',
        content => "this is file file created by puppet\n",
	path => '/opt/test',
     }

