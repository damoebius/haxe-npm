var os = require('os');
var exec = require('child_process').exec;
var fs = require('fs');
var zlib = require('zlib');

var platform = os.platform();
console.log("Installing Binaries for  " + os.platform() );
var inputFile='';
var outputFile='';
switch(platform) {
	case 'linux':
		inputFile = 'haxe-linux32.gz';
		outputFile='haxe';
		break;
	case 'darwin':
		inputFile = 'haxe-osx.gz';
		outputFile='haxe';
		break;	
	case 'win32':
	case 'win64':
		inputFile = 'haxe-win.gz';
		outputFile='haxe.exe';
		break;
	default:
		console.error("ERROR : Unknown plateform");
}

var input = fs.readFileSync("./bin/"+inputFile);
zlib.gunzip(input,function(error,result){
	if(error != null){
		console.error(error);
	} else {
		fs.writeFileSync('./bin/'+outputFile,result);
	}
});