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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

class nullRunnable () =
  object
    inherit ARunnable.aRunnable ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullRunnable" (fun arguments -> Obj.repr (new nullRunnable (Obj.obj arguments)))

let instance = (new nullRunnable ())
let get_instance () = instance
let () = java_register_static "NullRunnable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NullRunnable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


