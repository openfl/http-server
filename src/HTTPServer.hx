package;


import hxp.*;


class HTTPServer {
	
	
	public static function launch (workingDirectory:String, localDirectory:String, args:Array<String>):Int {

		var suffix = switch (System.hostPlatform) {

			case WINDOWS: "-windows.exe";
			case MAC: "-mac";
			case LINUX: "-linux";
			default: return 1;

		}

		if (suffix == "-linux") {

			if (System.hostArchitecture == X86) {

				suffix += "32";

			} else {

				suffix += "64";

			}

		}

		var templatePaths = [ Path.combine (localDirectory, "bin") ];
		var node = System.findTemplate (templatePaths, "node" + suffix);
		var server = System.findTemplate (templatePaths, "http-server/bin/http-server");

		if (System.hostPlatform != WINDOWS) {

			Sys.command ("chmod", [ "+x", node ]);

		}

		args = [ server ].concat (args);

		return System.runCommand (workingDirectory, node, args);

	}
	
	
	public static function main () {
		
		var localDirectory = Haxelib.getPath (new Haxelib ("http-server"));
		
		var arguments = Sys.args ();
		var workingDirectory = arguments.pop ();
		
		launch (workingDirectory, localDirectory, arguments);
		
	}
	
	
}