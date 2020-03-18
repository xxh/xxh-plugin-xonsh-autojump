[wting/autojump](https://github.com/wting/autojump) plugin for [xxh/xxh](https://github.com/xxh/xxh) based on [sagartewari01/autojump-xonsh](https://github.com/sagartewari01/autojump-xonsh)

## Install
From xxh repo:
```
xxhp i xxh-plugin-xonsh-autojump
xxh yourhost +s xonsh +if
```
From any repo:
```
cd ~/.xxh/xxh/plugins \
    && git clone --depth 1 https://github.com/xxh/xxh-plugin-xonsh-autojump \
    && xonsh xxh-plugin-xonsh-autojump/build.sh
    
# connect once with updating host
xxh yourhost +s xonsh +if
```
