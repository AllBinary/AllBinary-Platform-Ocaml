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
(* package org.allbinary.game.view *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.view.ViewPositionBase *)
(* import org.allbinary.view.ViewPositionFactoryInterface *)

class staticTileLayerViewPositionFactory () =
  object
    

    method getInstance () : ViewPositionBase.viewPositionBase =
        begin
        ((new StaticTileLayerIntoPositionViewPosition.staticTileLayerIntoPositionViewPosition ()) :> ViewPositionBase.viewPositionBase)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "StaticTileLayerViewPositionFactory" (fun arguments -> Obj.repr (new staticTileLayerViewPositionFactory (Obj.obj arguments)))


