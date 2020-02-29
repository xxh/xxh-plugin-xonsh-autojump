#!/usr/bin/env xonsh

import sys
plugin_path = pf"{__file__}".absolute().parent
$PATH = $PATH + [ plugin_path / 'build/autojump/bin' ]
xontrib_autojump = plugin_path / 'build/xontrib_autojump'
sys.path.append(str(xontrib_autojump))
xontrib load autojump
