nginx:
  pkg:
    - installed
  service:
    - running
    - watch:
       - pkg: nginx
       - file: /etc/nginx/nginx.conf
       - user: nginx
  user.present:
    - uid: 80
    - gid: 80
    - home: /usr/share/nginx/html
    - shell: /bin/nologin
    - require:
      - group: nginx
  group.present:
    - gid: 80
    - require:
      - pkg: nginx

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
