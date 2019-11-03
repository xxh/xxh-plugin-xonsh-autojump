import os

echo Install autojump
autojump_home = $XXH_HOME + '/autojump'
if not os.path.exists(autojump_home):
    git clone --depth 1 https://github.com/wting/autojump @(autojump_home) 

echo Install autojump-xonsh
autojump_xonsh_home = $XXH_HOME + '/autojump-xonsh'
mkdir -p @(autojump_xonsh_home)
autojump_xonsh = autojump_xonsh_home + '/autojump_xonsh.xsh'
if not os.path.exists(autojump_xonsh):
    # https://github.com/sagartewari01/autojump-xonsh
    wget -q --show-progress https://raw.githubusercontent.com/sagartewari01/autojump-xonsh/465df616626946286c125266f05702c49e9f7a91/xontrib/autojump.xsh -O @(autojump_xonsh)