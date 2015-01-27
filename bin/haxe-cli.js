#!/usr/bin/env node
var os = require('os');
var fs = require('fs');
var ncp = require('ncp').ncp;
var path = require('path');
var exec = require('child_process').exec;

var platform = os.platform();
var haxeExec = 'haxe.bin';
var stdPath = path.dirname(fs.realpathSync(__filename)) + '/../std';
var templatePath = path.dirname(fs.realpathSync(__filename)) + '/../template';
var cmd = '';
if(platform == 'win32' || platform == 'win64'){
    haxeExec = 'haxe.exe' ;
}
var haxeDir = path.dirname(fs.realpathSync(__filename));
cmd += haxeDir + '/' + haxeExec + ' ';

var createProject = '';
process.argv.forEach(function (val, index, array) {
    if (index > 1) {
        if (val == '-lib') {
            cmd += '-cp ' + haxeDir + '/../../';
        } else if(val == '-use'){
            cmd += '-cp ' + haxeDir + '/../lib/';
        }
        else if(val == 'create'){
            createProject = process.argv[index + 1];
        }
        else {
            cmd += val + ' ';
        }
    }
});
if(createProject != ''){
   console.log('create new project : ' + createProject);
    if(fs.existsSync( createProject )){
        console.error( 'le dossier existe déja');
    } else {
        ncp(templatePath,createProject, function(err){
            if (err) {
                console.error(err);
            } else {
                fs.renameSync(createProject + '/src/com/myproject', createProject + '/src/com/' + createProject.toLowerCase());
                fs.renameSync(createProject + '/src/MyProject.hx', createProject + '/src/' + createProject + '.hx');
            }
        });

    }
} else {
    exec(cmd, {env: {'HAXE_STD_PATH': stdPath}}, function (error, stdout, stderr) {
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
}
