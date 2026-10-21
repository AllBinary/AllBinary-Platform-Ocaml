(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2011 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.terrain *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class terrainEvent ((basicTerrainInfo_arg : Obj.t)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (basicTerrainInfo_arg)
    val mutable basicTerrainInfo : BasicTerrainInfo.basicTerrainInfo = (Obj.magic 0)
    method basicTerrainInfo = basicTerrainInfo
    method set_basicTerrainInfo value' = basicTerrainInfo <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("TerrainEvent: \n"));
        ignore (!stringBuffer#append ("LayerInterface: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr basicTerrainInfo))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getBasicTerrainInfo () : BasicTerrainInfo.basicTerrainInfo =
        begin
        (basicTerrainInfo :> BasicTerrainInfo.basicTerrainInfo)
        end [@@warning "-7"]
    

    method setBasicTerrainInfo : 'any1. 'any1 -> unit = fun (basicTerrainInfo_arg) ->
        let basicTerrainInfo_arg = Obj.repr basicTerrainInfo_arg in
        begin
        basicTerrainInfo <- (Obj.magic basicTerrainInfo_arg)
        end [@@warning "-7-20"]
    

    method setBasicTerrainInfoForCircularStaticPool : 'any1. 'any1 -> unit = fun (basicTerrainInfo_arg) ->
        let basicTerrainInfo_arg = Obj.repr basicTerrainInfo_arg in
        begin
        basicTerrainInfo <- (Obj.magic basicTerrainInfo_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        basicTerrainInfo <- ((BasicTerrainInfo.get_nULL_BASIC_TERRAIN_INFO ()) :> BasicTerrainInfo.basicTerrainInfo);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setBasicTerrainInfo (basicTerrainInfo))
      end
  end
let () = java_register_constructor "TerrainEvent" (fun arguments -> Obj.repr (new terrainEvent (Obj.obj arguments)))


