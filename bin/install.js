var os = require('os');
var http = require('http');
var Download = require('download');
var downloadStatus = require('download-status');
var exec = require('child_process').exec
var fsx = require('fs-extra');
var fs = require('fs');

var platform = os.platform();
var haxeVersion = process.env.npm_package_version;

console.log("Installing Haxe "+haxeVersion+" for " + os.platform() );
var remoteFile ='';
var binFile='';
var outBinFile='';
var alias_cmd='';
var stdPath=__dirname+'/../std';

switch(platform) {
    case 'linux':
        remoteFile = 'http://haxe.org/website-content/downloads/'+haxeVersion+'/downloads/haxe-'+haxeVersion+'-linux64.tar.gz';
        binFile = "haxe";
        outBinFile = "haxe.bin";
        break;
    case 'darwin':
        remoteFile = 'http://haxe.org/website-content/downloads/'+haxeVersion+'/downloads/haxe-'+haxeVersion+'-osx.tar.gz';
        binFile = "haxe";
        outBinFile = "haxe.bin";
        break;
    case 'win32':
    case 'win64':
        remoteFile = 'http://haxe.org/website-content/downloads/'+haxeVersion+'/downloads/haxe-'+haxeVersion+'-win.zip';
        alias_cmd = 'setx HAXE_STD_PATH "' + stdPath + '"';
        binFile = "haxe.exe";
        outBinFile = "haxe.exe";
        break;
    default:
        console.error("ERROR : Unknown plateform");
}

function onExtracted( err, files ) {
    if( err ) {
        console.error("Unable to download or extract Haxe.");
        throw err;
    } else {
        console.log("Extracting files from archive..." );
        fsx.copySync( __dirname + '/haxe-' + haxeVersion +'/std'  , stdPath);
        fsx.copySync( __dirname + '/haxe-' + haxeVersion +'/'+binFile  , __dirname+'/'+outBinFile);
        fs.chmodSync(__dirname+'/'+outBinFile, '755');
        fsx.removeSync( __dirname + '/haxe-' + haxeVersion);
        exec(alias_cmd, function ( error, stdout, stderr ) {
            if ( error !== null ) {
                console.error(error);
            }
        });

        console.log("Installation Complete" );
    }


};
var d = new Download({ extract: true })
    .get( remoteFile )
    .dest( __dirname )
    .use(downloadStatus())
    .run( onExtracted );
