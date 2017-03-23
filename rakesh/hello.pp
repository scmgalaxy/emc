

file { '/opt/hello.txt':
        ensure => 'present',
        content => " This is mu new file",
        mode => "777"

     }
