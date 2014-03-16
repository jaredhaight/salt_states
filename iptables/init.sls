iptables:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: iptables

/etc/sysconfig/iptables:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://iptables/iptables-config
    - require:
      - pkg: iptables
