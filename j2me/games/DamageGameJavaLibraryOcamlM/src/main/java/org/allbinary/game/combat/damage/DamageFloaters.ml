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
(* package org.allbinary.game.combat.damage *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.paint.Paintable *)

class damageFloaters () =
  object
    inherit Paintable.paintable ()
    

    method add ((_damage : int)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DamageFloaters" (fun arguments -> Obj.repr (new damageFloaters (Obj.obj arguments)))

let sINGLETON = (new damageFloaters ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "DamageFloaters.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "DamageFloaters.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


