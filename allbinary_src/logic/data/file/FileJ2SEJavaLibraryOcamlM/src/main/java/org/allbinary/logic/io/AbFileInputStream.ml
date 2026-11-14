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
(* import java.io.File *)
(* import java.io.FileInputStream *)
(* import java.io.FileNotFoundException *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)

class abFileInputStream ((name : string)) =
  object
    inherit java_file_input_stream (Obj.magic (name))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AbFileInputStream" (fun arguments -> Obj.repr (new abFileInputStream (Obj.obj arguments)))

let createFromAbFile : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        (Obj.magic ((new abFileInputStream (((AbFileNativeUtil.get ((Obj.magic file)))#getPath ())))))
        end [@@warning "-20"]

and createFromFile : 'return. java_file -> 'return = fun ((file : java_file)) ->
        begin
        (Obj.magic ((new abFileInputStream ((file#getPath ())))))
        end
let () = java_register_static "AbFileInputStream.createFromAbFile" (fun arguments -> Obj.repr (createFromAbFile (Obj.obj arguments)))
let () = java_register_static "AbFileInputStream.createFromFile" (fun arguments -> Obj.repr (createFromFile (Obj.obj arguments)))


