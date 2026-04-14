FROM nixos/nix:2.34.6@sha256:ffb94901e4ef854fe5a8e1a3170a1b8480ed505eaaa37091809664390acd8d20

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
