#!/usr/bin/env xonsh

import sys, argparse

parser = argparse.ArgumentParser(description='build')
parser.add_argument('-q', '--quiet', action='store_true', help=f"Quiet mode")
opt = parser.parse_args()

arg_q = ['-q'] if opt.quiet else []

plugin_path = pf"{__file__}".absolute().parent
plugin_build_path = plugin_path / 'build'

mkdir -p @(plugin_build_path)

pluginrc_file = plugin_path/'pluginrc.xsh'
if pluginrc_file.exists():
    cp @(pluginrc_file) @(plugin_build_path)

autojump_home = plugin_build_path / 'autojump'
if not autojump_home.exists():
    git clone @(arg_q) --depth 1 https://github.com/wting/autojump @(autojump_home)

xontrib_autojump_home = plugin_build_path / 'xontrib_autojump'
if not xontrib_autojump_home.exists():
    pip install @(arg_q) -t @(xontrib_autojump_home) xontrib-autojump
