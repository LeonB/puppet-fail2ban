class fail2ban::package {

  package  { $fail2ban::packages:
    ensure => $fail2ban::ensure,
  }

}
