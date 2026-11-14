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
(* import java.io.FileNotFoundException *)
(* import java.io.FileOutputStream *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)

class abFileOutputStream ((name : string), (append : bool)) =
  object
    inherit java_file_output_stream (Obj.magic (name, append))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AbFileOutputStream" (fun arguments -> Obj.repr (new abFileOutputStream (Obj.obj arguments)))

let createFromAbFile : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        (Obj.magic ((new abFileOutputStream (((Obj.magic file)#getPath ()), false))))
        end [@@warning "-20"]

and createFromAbFileAppend : 'any1 'return. 'any1 * bool -> 'return = fun (file, (append : bool)) ->
        let file = Obj.repr file in
        begin
        (Obj.magic ((new abFileOutputStream (((Obj.magic file)#getPath ()), append))))
        end [@@warning "-20"]

and createFromFilePath : 'return. string -> 'return = fun ((name : string)) ->
        begin
        (Obj.magic ((new abFileOutputStream (name, false))))
        end

and createFromFilePathAppend : 'return. string * bool -> 'return = fun ((name : string), (append : bool)) ->
        begin
        (Obj.magic ((new abFileOutputStream (name, append))))
        end
let () = java_register_static "AbFileOutputStream.createFromAbFile" (fun arguments -> Obj.repr (createFromAbFile (Obj.obj arguments)))
let () = java_register_static "AbFileOutputStream.createFromAbFileAppend" (fun arguments -> Obj.repr (createFromAbFileAppend (Obj.obj arguments)))
let () = java_register_static "AbFileOutputStream.createFromFilePath" (fun arguments -> Obj.repr (createFromFilePath (Obj.obj arguments)))
let () = java_register_static "AbFileOutputStream.createFromFilePathAppend" (fun arguments -> Obj.repr (createFromFilePathAppend (Obj.obj arguments)))


