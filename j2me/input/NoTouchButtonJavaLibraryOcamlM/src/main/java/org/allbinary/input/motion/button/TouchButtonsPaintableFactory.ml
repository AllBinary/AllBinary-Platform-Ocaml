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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.paint.Paintable *)


let getInstance : 'any1. 'any1 -> Paintable.paintable = fun (_basicColor) ->
        begin
        ((new Paintable.paintable ()) :> Paintable.paintable)
        end [@@warning "-20"]

let () = java_register_static "TouchButtonsPaintableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class touchButtonsPaintableFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TouchButtonsPaintableFactory" (fun arguments -> Obj.repr (new touchButtonsPaintableFactory (Obj.obj arguments)))


