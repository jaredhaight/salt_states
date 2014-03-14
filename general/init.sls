jared:
  user.present:
    - groups:
      - wheel

ssh-key-jared:
  ssh_auth:
    - present
    - user: jared
    - source: salt://general/jared.id_rsa.pub
