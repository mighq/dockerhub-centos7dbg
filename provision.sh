#!/bin/bash

function yi() {
  yum --disableplugin='*' --assumeyes install "$@"
}

yum makecache

base_pkgs=(
  which
  less
  net-tools
  iproute
  iptables
  strace
  tcpdump
  gdb
  bind-utils
  procps
  procps-ng
  dstat
  sysstat
  wireshark
  nc
  nmap
  iputils
  traceroute
  ethtool
  util-linux-ng
  blktrace
  pciutils
  mtr
  lsof
  mc
  vim-enhanced
  perf
)
yi "${base_pkgs[@]}"

yi epel-release

epel_pkgs=(
  htop
  iperf
  iftop
  iptraf-ng
  httpry
  ngrep
  socat
  ncdu
)
yi "${epel_pkgs[@]}"

yum clean all
