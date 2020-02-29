#!/usr/bin/env xonsh

plugin_path = pf"{__file__}".absolute().parent
plugin_build_path = plugin_path / 'build'

autojump_home = plugin_build_path / 'autojump'
if not auto jump_home.exists():
    print('Build autojump')
    git clone --depth 1 https://github.com/wting/autojump @(autojump_home)

xontrib_autojump_home = plugin_build_path / 'xontrib_autojump'
if not xontrib_autojump_home.exists():
    print('Build autojump-xonsh')
    git clone --depth 1 https://github.com/sagartewari01/autojump-xonsh @(xontrib_autojump_home)
