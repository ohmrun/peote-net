package peote.net;

#if (haxe_ver >= 4.0) enum #else @:enum#end
abstract Reason(Int) from Int to Int 
{
	inline var DISCONNECT :Int = 0; // disconnected from peote-server (joint-owner/user)
	inline var CLOSE      :Int = 1; // owner closed joint or user leaves
	inline var KICK       :Int = 2; // user was kicked by joint-owner
	                                    
	inline var ID         :Int = 10; // can't enter/open joint with this id (another or none exists)
	inline var FULL       :Int = 11; // channel is full (max of 256 users already connected) (max is 128).
	inline var MAX        :Int = 12; // created/joined to much channels on this server (max is 128).
                                        
	inline var MALICIOUS  :Int = 20; // malicious input
}
class ReasonLift{
	static public function toString(self:Reason){
		return switch(self){
			case DISCONNECT : "DISCONNECT"; 
			case CLOSE      : "CLOSE"; 
			case KICK       : "KICK"; 
	                                    
			case ID         : "ID"; 
			case FULL       : "FULL"; 
			case MAX        : "MAX"; 
                                        
			case MALICIOUS  : "MALICIOUS";
		}
	}
}