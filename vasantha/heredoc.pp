$ntp_conf = @(END)
driftfile /var/lib/ntp/drfit
server tock prefer iburst
server uk.pool.ntp.org
END
notify { "${ntp_conf}":}
