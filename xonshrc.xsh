#!/usr/bin/env xonsh

import sys, os
build_path = os.path.join($XXH_HOME, 'plugins', 'xxh-plugin-autojump', 'build')
$PATH = $PATH + [  os.path.join(build_path, 'autojump', 'bin') ]
sys.path.append( os.path.join(build_path, 'autojump-xonsh'))
import autojump_xonsh