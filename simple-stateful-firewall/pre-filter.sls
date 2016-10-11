ssf accept packets in established connections:
  iptables.append:
    - chain: INPUT
    - match: [state]
    - connstate: RELATED,ESTABLISHED
    - jump: ACCEPT
    - save: True

ssf accept loopback interface:
  iptables.append:
    - chain: INPUT
    - in-interface: lo
    - jump: ACCEPT
    - save: True

ssf drop invalid packets:
  iptables.append:
    - chain: INPUT
    - match: [state]
    - connstate: INVALID
    - jump: DROP
    - save: True

ssf accept icmp pings:
  iptables.append:
    - chain: INPUT
    - proto: icmp
    - icmp-type: 8
    - match: [state]
    - connstate: NEW
    - jump: ACCEPT
    - save: True
