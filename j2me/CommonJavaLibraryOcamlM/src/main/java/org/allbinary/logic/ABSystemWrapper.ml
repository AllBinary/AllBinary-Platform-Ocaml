(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)

class aBSystemWrapper () =
  object
    

    method arraycopy : 'any1 'any3. 'any1 * int * 'any3 * int * int -> unit = fun (src, (srcPos : int), dest, (destPos : int), (length : int)) ->
        let src = Obj.repr src in
        let dest = Obj.repr dest in
        begin
        ignore (Array.blit (Obj.magic src) (srcPos) (Obj.magic dest) (destPos) (length))
        end
    

    method currentTimeMillis () : int =
        begin
        (Float.to_int (Unix.gettimeofday () *. 1000.0))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ABSystemWrapper" (fun arguments -> Obj.repr (new aBSystemWrapper (Obj.obj arguments)))

let instance = (new aBSystemWrapper ())
let get_instance () = instance
let () = java_register_static "ABSystemWrapper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ABSystemWrapper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


