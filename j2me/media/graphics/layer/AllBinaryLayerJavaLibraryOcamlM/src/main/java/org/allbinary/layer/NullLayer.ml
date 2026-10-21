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
(* import javax.microedition.lcdui.Graphics *)

class nullLayer () =
  object
    inherit Layer.layer (0, 0)
    
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NullLayer" (fun arguments -> Obj.repr (new nullLayer (Obj.obj arguments)))

let instance = (new nullLayer ())
let get_instance () = instance
let () = java_register_static "NullLayer.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NullLayer.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


