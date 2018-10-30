package;


import hxp.*;

@:compiler("-cp")
@:compiler("src")


class Script extends hxp.Script {
	
	
	public function new () {
		
		super ();
		
		if (command == "build") {
			
			var hxml = new HXML ();
			hxml.cp ("src");
			hxml.lib ("hxp");
			hxml.main = "HTTPServer";
			hxml.neko = "run.n";
			hxml.build ();
			
		} else {
			
			if (command == "default") args.shift ();
			HTTPServer.launch (workingDirectory, Sys.getCwd (), args); 
			
		}
		
	}
	
	
}