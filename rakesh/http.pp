include puppet_vim

package { "httpd":
           ensure=>"installed",
        }

service { "httpd":
           ensure=>"running",
           enable=>true,


}

file { '/var/www/html/index.html':
        ensure=> 'file',
        content=>'<h1>Hello to the world of puppet>/h1>',
}
