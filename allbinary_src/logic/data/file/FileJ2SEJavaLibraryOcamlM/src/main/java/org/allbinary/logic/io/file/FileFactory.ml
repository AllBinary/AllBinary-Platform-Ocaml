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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class fileFactory () =
  object
    

    (* Java overload getInstance(String) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(AbFile, String) is not converted: OCaml has one method per name *)
    

    method isFile ((path : string)) : bool =
        try
        begin
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (path)))))) in ();
        if ((Obj.magic !file)#exists ()) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "FileFactory" (fun arguments -> Obj.repr (new fileFactory (Obj.obj arguments)))

let instance = (new fileFactory ())
let get_instance () = instance
let () = java_register_static "FileFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


