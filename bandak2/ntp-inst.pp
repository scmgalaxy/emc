package { 'ntp':
		ensure => 'installed',
		name   => 'ntp',
		provider => 'yum',
		}
service { 'ntp':
		ensure => 'running',
		name => 'ntpd', #userful where the service name differs
		enable => true,
	}

$ntp_conf = "#Manager by Puppet
server 192.168.0.3 iburst
driftfile /var/lib/ntp/drift\n"

file {'ntp conf':
	ensure => 'file',
	name => '/etc/ntp.conf',
	content => $ntp_conf,
	}
