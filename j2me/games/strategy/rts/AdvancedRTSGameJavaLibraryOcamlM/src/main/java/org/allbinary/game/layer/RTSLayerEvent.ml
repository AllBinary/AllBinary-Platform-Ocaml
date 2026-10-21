(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class rTSLayerEvent ((rtsLayer_arg : PathFindingLayerInterface.pathFindingLayerInterface)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (rtsLayer_arg)
    val mutable rtsLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method rtsLayer = rtsLayer
    method set_rtsLayer value' = rtsLayer <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("RTSLayerEvent: \n"));
        ignore (!stringBuffer#append ("RTSLayer: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getRtsLayer ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getRtsLayer () : PathFindingLayerInterface.pathFindingLayerInterface =
        begin
        (rtsLayer :> PathFindingLayerInterface.pathFindingLayerInterface)
        end [@@warning "-7"]
    

    method setRtsLayer : 'any1. 'any1 -> unit = fun (rtsLayer_arg) ->
        let rtsLayer_arg = Obj.repr rtsLayer_arg in
        begin
        rtsLayer <- (Obj.magic rtsLayer_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        rtsLayer <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "RTSLayerEvent" (fun arguments -> Obj.repr (new rTSLayerEvent (Obj.obj arguments)))


