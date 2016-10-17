{% from "simple-stateful-firewall/map.jinja" import ssf with context %}

ssf install iptables:
  pkg.installed:
    - names: {{ ssf.pkgs }}
  service.running:
    - name: {{ ssf.service }}
    - enable: True