[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE.md) [![Haxelib Version](https://img.shields.io/github/tag/openfl/http-server.svg?style=flat&label=haxelib)](http://lib.haxe.org/p/hxp)

# http-server

Node http-server, accessible from Haxelib.

```
haxelib install http-server
```

```
haxelib run http-server
haxelib run http-server -p 3000 path/to/bin -o
haxelib run http-server -h
```

The library can also be run from HXP rather than through Haxelib

```
hxp path/to/http-server -h
```

# Development Builds

Clone the http-server repository:

    git clone https://github.com/openfl/http-server

Tell haxelib where your development copy of http-server is installed:

    haxelib dev http-server http-server

To rebuild the Neko-based tools (used from `haxelib run`) use HXP

    cd http-server
    hxp build

To return to release builds:

    haxelib dev http-server
