package peote.net;

class Util{
  @:noUsing static public inline function print(d:Dynamic,?pos:haxe.PosInfos){
    #if (debugPeoteNet || peote.net.debug)
      haxe.Log.trace(d,pos);
    #end
  } 
}