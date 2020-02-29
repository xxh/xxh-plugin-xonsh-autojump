#!/usr/bin/env xonsh

$PATH = $PATH + [ $XXH_HOME / 'plugins/xxh-plugin-autojump/build/autojump/bin' ]

if not ($XXH_HOME / 'pip/xontrib/autojump.xsh').exists():
    xontrib_autojump = $XXH_HOME / 'plugins/xxh-plugin-autojump/build/xontrib_autojump/xontrib'
    bash -c $(echo cp @(str(xontrib_autojump)+'/*') @($XXH_HOME / 'pip/xontrib') )

xontrib load autojump
