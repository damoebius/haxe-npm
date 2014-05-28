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
		inputFile = 'haxe-linux32.gz';
		outputFile='haxe';
		alias_cmd = 'grep "HAXE_STD_PATH" /etc/environment || echo "export HAXE_STD_PATH='+stdPath+':." | sudo tee -a /etc/environment';
		break;
	case 'darwin':
		inputFile = 'haxe-osx.gz';
		outputFile='haxe';
		alias_cmd = 'grep "HAXE_STD_PATH" /etc/environment || echo "export HAXE_STD_PATH='+stdPath+':." | sudo tee -a /etc/environment';
		break;	
	case 'win32':
	case 'win64':
		inputFile = 'haxe-win.gz';
		outputFile='haxe.exe';
		alias_cmd = 'setx HAXE_STD_PATH "'+stdPath+'"';
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
exec(alias_cmd,function(error, stdout, stderr){
	if (error !== null) {
	  console.error(error);
	}
});