ssf create chains:
  iptables.chain_present:
    - names: [TCP, UDP]

ssf filter new udp connections:
  iptables.append:
    - chain: INPUT
    - proto: udp
    - match: [state]
    - connstate: NEW
    - jump: UDP
    - save: True

ssf filter new tcp connections:
  iptables.append:
    - chain: INPUT
    - proto: tcp
    - match: [state]
    - connstate: NEW
    - syn: ''
    - jump: TCP
    - save: True
