(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.unit *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameInputProcessor *)

class unitGameInputProcessor ((unitLayer_arg : UnitLayer.unitLayer)) =
  object
    inherit GameInputProcessor.gameInputProcessor ()
    val mutable unitLayer : UnitLayer.unitLayer = (Obj.magic 0)
    method unitLayer = unitLayer
    method set_unitLayer value' = unitLayer <- value'
    

    initializer
      begin
        ();
        ();
        unitLayer <- unitLayer_arg
      end
  end
let () = java_register_constructor "UnitGameInputProcessor" (fun arguments -> Obj.repr (new unitGameInputProcessor (Obj.obj arguments)))


