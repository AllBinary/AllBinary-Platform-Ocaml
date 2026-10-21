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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.AbFile *)

class dataOutputStreamFactory () =
  object
    

    method getInstanceForAbFile : 'any1. 'any1 -> AbDataOutputStream.abDataOutputStream = fun (file) ->
        let file = Obj.repr file in
        begin
        let idFileOutputStream : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFileOutputStream.createFromAbFile" (Obj.repr ((Obj.magic file))))))) in ();
        let idOutData : AbDataOutputStream.abDataOutputStream ref = ref (((new AbDataOutputStream.abDataOutputStream ((Obj.magic !idFileOutputStream))) :> AbDataOutputStream.abDataOutputStream)) in ();
        (!idOutData :> AbDataOutputStream.abDataOutputStream)
        end [@@warning "-20"]
    

    (* Java overload getInstance(String, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DataOutputStreamFactory" (fun arguments -> Obj.repr (new dataOutputStreamFactory (Obj.obj arguments)))

let instance = (new dataOutputStreamFactory ())
let get_instance () = instance
let () = java_register_static "DataOutputStreamFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DataOutputStreamFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


