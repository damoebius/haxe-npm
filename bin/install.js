var os = require('os');
var exec = require('child_process').exec
var fs = require('fs');
var zlib = require('zlib');

var platform = os.platform();
console.log("Installing Binaries for  " + os.platform() );
var inputFile='';
var outputFile='';
var alias_cmd='';
var stdPath=__dirname+'/../std';

switch(platform) {
    case 'linux':
        inputFile = 'haxe-linux64.gz';
        outputFile = 'haxe.bin';
        unzip(inputFile, function ( error, result ) {
            if ( error != null ) {
                console.error(error);
            } else {
                fs.writeFileSync('./bin/' + outputFile, result);
                exec('chmod 755 ' + __dirname + '/' + outputFile, function ( error, stdout, stderr ) {
                    if ( error !== null ) {
                        console.error(error);
                    }
                });
            }
        });
        break;
    case 'darwin':
        inputFile = 'haxe-osx.gz';
        outputFile = 'haxe.bin';
        unzip(inputFile, function ( error, result ) {
            if ( error != null ) {
                console.error(error);
            } else {
                fs.writeFileSync('./bin/' + outputFile, result);
                exec('chmod 755 ' + __dirname + '/' + outputFile, function ( error, stdout, stderr ) {
                    if ( error !== null ) {
                        console.error(error);
                    }
                });
            }
        });

        break;
    case 'win32':
    case 'win64':
        inputFile = 'haxe-win.gz';
        outputFile = 'haxe.exe';
        alias_cmd = 'setx HAXE_STD_PATH "' + stdPath + '"';
        unzip(inputFile, function ( error, result ) {
            if ( error != null ) {
                console.error(error);
            } else {
                fs.writeFileSync('./bin/' + outputFile, result);
            }
        });
        exec(alias_cmd, function ( error, stdout, stderr ) {
            if ( error !== null ) {
                console.error(error);
            }


        });
        break;
    default:
        console.error("ERROR : Unknown plateform");
}
function unzip(inputFile, callback){
    var input = fs.readFileSync("./bin/"+inputFile);
    zlib.gunzip(input,callback);
}
console.log("Deleting archives" );
fs.unlinkSync("./bin/haxe-win.gz");
fs.unlinkSync("./bin/haxe-osx.gz");
fs.unlinkSync("./bin/haxe-linux64.gz");
fs.unlinkSync("./bin/haxe-linux32.gz");
console.log("Installation Complete" );