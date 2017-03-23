package {'ntp':
ensure => 'installed', #'absent', 'purged', 'latest','4.1'
#name => 'ntp'
provider => 'yum'
}

$ntp_service = "ntpd"
service{'ntpd':
ensure => 'running',
enable => true,
name => $ntp_service,
}

notify { "the ${ntp_service} is up and running":}

$ntp_conf = '#Managed by puppet.
server 192.168.0.3 iburst
driftfile /var/lib/ntp/drift'
file {'/etc/ntp.conf':
ensure => 'file',
content => $ntp_conf,}
