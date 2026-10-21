(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class playerOwnedRTSLayers () =
  object
    val mutable rtsLayerList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method rtsLayerList = rtsLayerList
    method set_rtsLayerList value' = rtsLayerList <- value'
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("All: "));
        ignore (!stringBuffer#appendint ((rtsLayerList#size ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        rtsLayerList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "PlayerOwnedRTSLayers" (fun arguments -> Obj.repr (new playerOwnedRTSLayers (Obj.obj arguments)))


