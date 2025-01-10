FROM nixos/nix:latest

COPY entrypoint.sh /entrypoint.sh
RUN nix profile install github:kamadorueda/alejandra/3.1.0

ENTRYPOINT ["/entrypoint.sh"]
