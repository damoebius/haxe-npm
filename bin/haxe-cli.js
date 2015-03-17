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

var createProjectName = '';
process.argv.forEach(function (val, index, array) {
    if (index > 1) {
        if (val == '-lib') {
            cmd += '-cp ' + haxeDir + '/../../';
        } else if(val == '-use'){
            cmd += '-cp ' + haxeDir + '/../lib/';
        }
        else if(val == 'create'){
            createProjectName = process.argv[index + 1];
        }
        else {
            cmd += val + ' ';
        }
    }
});
if(createProjectName != ''){
   console.log('create new project : ' + createProjectName);
    if(fs.existsSync( createProjectName )){
        console.error( 'le dossier existe déja');
    } else {
        ncp(templatePath,createProjectName, function(err){
            if (err) {
                console.error(err);
            } else {
                fs.renameSync(createProjectName + '/src/com/myproject', createProjectName + '/src/com/' + createProjectName.toLowerCase());
                fs.renameSync(createProjectName + '/src/MyProject.hx', createProjectName + '/src/' + createProjectName + '.hx');
                fs.readFile(createProjectName + '/src/' + createProjectName + '.hx', 'utf8', function (err,data) {
                    if (err) {
                        console.log(err);
                    }
                    var result = data.replace(/MyProject/g, createProjectName);

                    fs.writeFile(createProjectName + '/src/' + createProjectName + '.hx', result, 'utf8', function (err) {
                        if (err) console.log(err);
                    });
                });
                fs.readFile(createProjectName + '/build.xml', 'utf8', function (err,data) {
                    if (err) {
                        console.log(err);
                    }
                    var result = data.replace(/MyProject/g, createProjectName);

                    fs.writeFile(createProjectName + '/build.xml', result, 'utf8', function (err) {
                        if (err) console.log(err);
                    });
                });
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
