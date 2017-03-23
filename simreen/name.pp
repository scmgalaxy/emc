file { 'messgae':
  ensure  => 'file',
  content => 'welcome to puppet',
  path    => '/etc/name',
}
