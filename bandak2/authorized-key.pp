ssh_authorized_key { 'bobtest@centos7':
		user => 'bob',
		type => 'ssh-rsa',
		key => 'junkyardkey',
		}
