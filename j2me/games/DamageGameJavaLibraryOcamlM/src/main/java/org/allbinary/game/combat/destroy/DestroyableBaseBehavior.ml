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
(* package org.allbinary.game.combat.destroy *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonStrings *)

class destroyableBaseBehavior () =
  object (self)
    

    method getName () : string =
        begin
        (java_get_class (Obj.repr self))
        end
    

    method isDestroyed () : bool =
        begin
        raise (Failure ((CommonStrings.getInstance ())#nOT_IMPLEMENTED))
        end
    

    method setDestroyed ((_destroyed : bool)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DestroyableBaseBehavior" (fun arguments -> Obj.repr (new destroyableBaseBehavior (Obj.obj arguments)))

let instance = (new destroyableBaseBehavior ())
let get_instance () = instance
let () = java_register_static "DestroyableBaseBehavior.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DestroyableBaseBehavior.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


