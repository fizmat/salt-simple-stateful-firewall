include:
  - .install
  {%- if salt['pillar.get']('ssf:flush') %}
  - .flush
  {%- endif %}
  - .pre-filter
  - .filterchains
  - .post-filter
