user { 'bob':
ensure => 'present',
managehome => true,
groups => [ 'adm', 'users'],
password => pw_hash('Password1', 'SHA-512', 'salt'),
}

group { 'admins' : 
ensure => 'present'}
