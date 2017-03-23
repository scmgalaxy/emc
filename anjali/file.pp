file { '/opt/hello.txt':
      ensure => 'present' ,
      content => "hello",
}
