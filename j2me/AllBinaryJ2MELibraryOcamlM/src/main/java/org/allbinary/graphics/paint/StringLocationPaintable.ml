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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)

class stringLocationPaintable ((value_arg : string)) =
  object
    inherit LocationPaintable.locationPaintable ()
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawString (value, x, y, 0))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        value <- value_arg
      end
  end
let () = java_register_constructor "StringLocationPaintable" (fun arguments -> Obj.repr (new stringLocationPaintable (Obj.obj arguments)))


