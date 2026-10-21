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
(* import java.io.IOException *)
(* import java.io.OutputStream *)
(* import java.nio.channels.FileChannel *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)

class abFileOutputStream (fileOutputStream_arg) =
  object
    inherit OutputStream.outputStream ()
    val mutable fileOutputStream : Obj.t = Obj.repr 0
    method fileOutputStream : 'r. 'r = Obj.magic fileOutputStream
    method set_fileOutputStream : 'v. 'v -> unit = fun value' -> fileOutputStream <- Obj.repr value'
    
    

    method close () : unit =
        begin
        ignore ((Obj.magic fileOutputStream)#close ())
        end [@@warning "-7"]
    

    method getChannel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((Obj.magic fileOutputStream)#getChannel ())))
        end [@@warning "-7"]
    

    method write ((buffer : int array)) : unit =
        begin
        ignore ((Obj.magic fileOutputStream)#write (buffer))
        end [@@warning "-7"]
    

    (* Java overload write(ArrayType, INT, INT) is not converted: OCaml has one method per name *)
    

    (* Java overload write(INT) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ();
        fileOutputStream <- Obj.repr (fileOutputStream_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbFileOutputStream" (fun arguments -> Obj.repr (new abFileOutputStream (Obj.obj arguments)))

let createFromAbFile : 'any1. 'any1 -> _ = fun (file) ->
        let file = Obj.repr file in
        begin
        (new abFileOutputStream ((new FileOutputStream.fileOutputStream ((AbFileNativeUtil.get ((Obj.magic file)))))))
        end [@@warning "-20"]

and createFromAbFileAppend : 'any1. 'any1 * bool -> _ = fun (file, (_append : bool)) ->
        let file = Obj.repr file in
        begin
        (new abFileOutputStream ((new FileOutputStream.fileOutputStream (((Obj.magic file)#getPath ())))))
        end [@@warning "-20"]

and createFromFilePath ((name : string)) =
        begin
        (new abFileOutputStream ((new FileOutputStream.fileOutputStream (name))))
        end

and createFromFilePathAppend ((name : string), (_append : bool)) =
        begin
        (new abFileOutputStream ((new FileOutputStream.fileOutputStream (name))))
        end
let () = java_register_static "AbFileOutputStream.createFromAbFile" (fun arguments -> Obj.repr (createFromAbFile (Obj.obj arguments)))
let () = java_register_static "AbFileOutputStream.createFromAbFileAppend" (fun arguments -> Obj.repr (createFromAbFileAppend (Obj.obj arguments)))
let () = java_register_static "AbFileOutputStream.createFromFilePath" (fun arguments -> Obj.repr (createFromFilePath (Obj.obj arguments)))
let () = java_register_static "AbFileOutputStream.createFromFilePathAppend" (fun arguments -> Obj.repr (createFromFilePathAppend (Obj.obj arguments)))


