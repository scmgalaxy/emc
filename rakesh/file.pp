include puppet_vim

file { "Message File":
        ensure=>"file",
        content=>"welcome to my server",
        path=> '/etc/motd'
}

