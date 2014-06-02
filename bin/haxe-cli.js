#!/usr/bin/env node
var os = require('os');
var fs = require('fs');
var path = require('path');
var exec = require('child_process').exec;

var platform = os.platform();
var haxeExec = 'haxe';
if (platform == 'win32' || platform == 'win64') {
    haxeExec = 'haxe.exe'
}
var haxeDir = path.dirname(fs.realpathSync(__filename));
var cmd = haxeDir + '/' + haxeExec + ' ';

process.argv.forEach(function (val, index, array) {
    if (index > 1) {
        if (val == '-lib') {
            cmd += '-cp ' + haxeDir + '/../../';
        } else if(val == '-use'){
            cmd += '-cp ' + haxeDir + '/../lib/';
        }
        else {
            cmd += val + ' ';
        }
    }
});
exec(cmd, function (error, stdout, stderr) {
    if (error !== null) {
        console.error(error);
    }
    else if (stderr != null) {
        console.log(stderr);
    }
    else {
        console.log(stdout);
    }
});
