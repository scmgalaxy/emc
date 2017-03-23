package { 'abc':
  ensure   => 'installed',
  name    => 'ntp',
  provider => 'yum',
}
