#!/usr/bin/env xonsh

import os

plugin_path = os.path.dirname(os.path.realpath(__file__))
plugin_build_path = os.path.join(plugin_path, 'build')

print('Install autojump')
autojump_home = os.path.join(plugin_build_path, 'autojump')
if not os.path.exists(autojump_home):
    git clone --depth 1 https://github.com/wting/autojump @(autojump_home)

print('Install autojump-xonsh')
autojump_xonsh_home = os.path.join(plugin_build_path, 'autojump-xonsh')
mkdir -p @(autojump_xonsh_home)
autojump_xonsh = os.path.join(autojump_xonsh_home, 'autojump_xonsh.xsh')
if not os.path.exists(autojump_xonsh):
    # https://github.com/sagartewari01/autojump-xonsh
    wget -q --show-progress https://raw.githubusercontent.com/sagartewari01/autojump-xonsh/465df616626946286c125266f05702c49e9f7a91/xontrib/autojump.xsh -O @(autojump_xonsh)