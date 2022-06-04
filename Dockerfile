# 20220604 akanouras - See https://github.com/k3s-io/klipper-lb/issues/34#issuecomment-1113372191

FROM rancher/klipper-lb:v0.3.5
# Use nftables iptables not legacy
RUN \
  ln -sf /sbin/xtables-nft-multi /sbin/iptables && \
  ln -sf /sbin/xtables-nft-multi /sbin/iptables-save && \
  ln -sf /sbin/xtables-nft-multi /sbin/iptables-restore
CMD ["entry"]
