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
(* package org.allbinary.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.globals.Globals *)


let init : 'any1. 'any1 * string -> unit = fun (classLoader, (pathString : string)) ->
        let classLoader = Obj.repr classLoader in
        begin
        ignore (Globals.init ((Obj.magic classLoader), pathString))
        end [@@warning "-20"]

let () = java_register_static "NoLicense.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class noLicense () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NoLicense" (fun arguments -> Obj.repr (new noLicense (Obj.obj arguments)))


