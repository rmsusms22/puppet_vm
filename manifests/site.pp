node 'dongkim.linuxmaster.com' {
}

node 'vm01.linuxmaster.com' {
  file {'/tmp/testserver':
    content => "This is a test server.\n",
  }
}

node /^vm[0-9]+\.linuxmaster\.com$/ {
#  include vim_upgrade
#  include sshd
}
