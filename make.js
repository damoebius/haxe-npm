/**
 * Created by damo on 06/10/14.
 */

var fs = require('fs');
var ncp = require('ncp').ncp;
console.log("Making haxe npm package ");

var buildDir = 'build';
var libDir = buildDir+'/lib';

clean();
ncp('package.json',buildDir+'/package.json')
ncp('bin',buildDir+'/bin');
ncp('std',buildDir+'/std');
fs.mkdirSync(libDir);
ncp('lib/bean/src',libDir+'/bean');
ncp('lib/createjs',libDir+'/createjs');
ncp('lib/extjs/haxe',libDir+'/extjs');
ncp('lib/nodejs/lib/src',libDir+'/nodejs');
ncp('lib/phantomjs/src',libDir+'/phantomjs');
ncp('lib/phaser/src',libDir+'/phaser');
ncp('lib/pixijs/src',libDir+'/pixijs');
ncp('lib/threejs',libDir+'/threejs');


function clean(){
    if(fs.existsSync( buildDir)){
        rmDir(buildDir);
    }
    fs.mkdirSync(buildDir);
}


function rmDir(dirPath) {
    try { var files = fs.readdirSync(dirPath); }
    catch(e) { return; }
    if (files.length > 0)
        for (var i = 0; i < files.length; i++) {
            var filePath = dirPath + '/' + files[i];
            if (fs.statSync(filePath).isFile())
                fs.unlinkSync(filePath);
            else
                rmDir(filePath);
        }
    fs.rmdirSync(dirPath);
};