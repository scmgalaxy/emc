if $facts['os']['family'] == 'RedHat1' {
  notify { 'red hat':}
}
elsif $facts['augeas']['version'] == '4.1.0'{
  notify { 'version is 2.1.9':}
}
else {notify {'done':}}
