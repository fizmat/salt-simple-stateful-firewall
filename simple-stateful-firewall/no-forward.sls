ssf reject forwarding:
  iptables.append:
    - chain: FORWARD
    - reject-with: icmp-host-prohibited
    - jump: REJECT
    - save: True
