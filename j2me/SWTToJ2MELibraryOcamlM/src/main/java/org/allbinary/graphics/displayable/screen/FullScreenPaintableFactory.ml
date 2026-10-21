(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.displayable.screen *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.paint.FullScreenPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)

class fullScreenPaintableFactory () =
  object
    val mutable paintable : Paintable.paintable = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'

    initializer
      begin
        paintable <- ((FullScreenPaintable.getInstance ()) :> Paintable.paintable);
        ()
      end
  end
let () = java_register_constructor "FullScreenPaintableFactory" (fun arguments -> Obj.repr (new fullScreenPaintableFactory (Obj.obj arguments)))

let instance = (new fullScreenPaintableFactory ())
let get_instance () = instance
let () = java_register_static "FullScreenPaintableFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FullScreenPaintableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


