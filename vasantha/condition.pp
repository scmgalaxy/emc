if $facts['os']['family'] == 'RedHat'{
notify { "red hat":}
}

if $facts['osfamily'] == 'RedHaat'{
notify {'Red Hat':}
}
else {
notify {"Windows":}
}

