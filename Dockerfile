FROM registry.cri.epita.fr/cri/infrastructure/nixpie/nixos-spe:latest

RUN git config --global safe.directory '*'

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
