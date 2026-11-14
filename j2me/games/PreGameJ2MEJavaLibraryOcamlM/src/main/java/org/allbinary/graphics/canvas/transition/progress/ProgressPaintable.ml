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
(* package org.allbinary.graphics.canvas.transition.progress *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.paint.Paintable *)

class progressPaintable (progressCanvas_arg) =
  object
    inherit Paintable.paintable ()
    val mutable progressCanvas : Obj.t = Obj.repr 0
    method progressCanvas : 'r. 'r = Obj.magic progressCanvas
    method set_progressCanvas : 'v. 'v -> unit = fun value' -> progressCanvas <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic progressCanvas)#paint2 ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        progressCanvas <- Obj.repr (progressCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ProgressPaintable" (fun arguments -> Obj.repr (new progressPaintable (Obj.obj arguments)))


