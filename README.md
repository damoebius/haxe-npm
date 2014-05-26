![Haxe logo](http://haxe.org/img/haxe2/logo.png)
# [Haxe - The Cross-Platform Toolkit](http://haxe.org)

haxe-npm
========

## Installation

If you have the node package manager, npm, installed:

```shell
npm install -g haxe
```

Leave off the `-g` if you don't wish to install globally.

## Getting Started

Execute a script:

```shell
haxe2 --help
```

Compile a script:
Developing Javascript code is really easy with Haxe. Let's see our first HelloWorld example :

```shell
class Test {
    static function main() {
        trace("Hello World !");
    }
}
```
Put this class into a file named Test.hx and create the file compile.hxml in the same directory with the following content :
```shell
-js test.js
-main Test
```
To compile, run the command : 

```shell
haxe2 compile.hxml
```

For documentation, usage, and examples, see: http://haxe.org/

