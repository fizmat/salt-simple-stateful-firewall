ssf accept forwarding:
  iptables.append:
    - chain: FORWARD
    - jump: ACCEPT
    - save: True
