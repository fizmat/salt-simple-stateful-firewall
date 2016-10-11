ssf reject udp conections not accepted by filter:
  iptables.append:
    - chain: INPUT
    - proto: udp
    - reject-with: icmp-port-unreachable
    - jump: REJECT
    - save: True

ssf reject tcp connections not accepted by filter:
  iptables.append:
    - chain: INPUT
    - proto: tcp
    - reject-with: tcp-reset
    - jump: REJECT
    - save: True

ssf reject unexpected protocols:
  iptables.append:
    - chain: INPUT
    - reject-with: icmp-proto-unreachable
    - jump: REJECT
    - save: True
