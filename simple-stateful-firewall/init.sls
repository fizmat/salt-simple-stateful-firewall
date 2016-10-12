include:
  {%- if salt['pillar.get']('ssf_flush') %}
  - .flush
  {%- endif %}
  - .pre-filter
  - .filterchains
  - .post-filter
