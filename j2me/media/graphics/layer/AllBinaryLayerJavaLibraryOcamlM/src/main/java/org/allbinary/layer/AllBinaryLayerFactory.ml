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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.view.ViewPosition *)

class allBinaryLayerFactory (rectangle_arg) =
  object
    val mutable rectangle : Obj.t = Obj.repr 0
    method rectangle : 'r. 'r = Obj.magic rectangle
    method set_rectangle : 'v. 'v -> unit = fun value' -> rectangle <- Obj.repr value'
    
    

    method getInstance () : AllBinaryLayer.allBinaryLayer =
        begin
        ((new AllBinaryLayer.allBinaryLayer ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic rectangle), (ViewPosition.getInstanceD ()))) :> AllBinaryLayer.allBinaryLayer)
        end

    initializer
      begin
        ();
        ();
        rectangle <- Obj.repr (rectangle_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryLayerFactory" (fun arguments -> Obj.repr (new allBinaryLayerFactory (Obj.obj arguments)))


