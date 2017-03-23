$admingroups = ['wheel','adm']
notify {"the first group is ${admingroups[0]}":}
$username = ['bob', 'root']
notify {"the first user name is ${username[0]}":}
$userhash = {'username' => 'bob', 'userid' => '111'}
notify {"the user's id is ${userhash['userid']}":}
