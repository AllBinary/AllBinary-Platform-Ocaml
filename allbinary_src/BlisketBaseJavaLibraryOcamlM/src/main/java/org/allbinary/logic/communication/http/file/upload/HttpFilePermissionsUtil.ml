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
(* package org.allbinary.logic.communication.http.file.upload *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)

class httpFilePermissionsUtil () =
  object
    

    method create : 'any1. 'any1 -> unit = fun (path) ->
        let path = Obj.repr path in
        begin
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr ((Obj.magic path))))))) in ();
        if (not ((Obj.magic !file)#isFile ())) then begin
            ignore ((Obj.magic !file)#createNewFile ())
        end
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "HttpFilePermissionsUtil" (fun arguments -> Obj.repr (new httpFilePermissionsUtil (Obj.obj arguments)))

let instance = (new httpFilePermissionsUtil ())
let get_instance () = instance
let () = java_register_static "HttpFilePermissionsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HttpFilePermissionsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


