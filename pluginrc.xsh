#!/usr/bin/env xonsh

import sys
plugin_path = pf"{__file__}".absolute().parent
$PATH = $PATH + [ plugin_path / 'autojump/bin' ]
xontrib_autojump = plugin_path / 'xontrib_autojump'
sys.path.append(str(xontrib_autojump))
xontrib load autojump
