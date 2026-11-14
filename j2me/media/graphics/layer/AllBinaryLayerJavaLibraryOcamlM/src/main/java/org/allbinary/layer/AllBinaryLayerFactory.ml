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

class allBinaryLayerFactory ((rectangle_arg : Rectangle.rectangle)) =
  object
    val mutable rectangle : Rectangle.rectangle = (Obj.magic 0)
    method rectangle = rectangle
    method set_rectangle value' = rectangle <- value'
    
    

    method getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((new AllBinaryLayer.allBinaryLayer ((StringUtil.getInstance ())#eMPTY_STRING, rectangle, (ViewPosition.getInstanceD ())))))
        end

    initializer
      begin
        ();
        ();
        rectangle <- rectangle_arg
      end
  end
let () = java_register_constructor "AllBinaryLayerFactory" (fun arguments -> Obj.repr (new allBinaryLayerFactory (Obj.obj arguments)))


