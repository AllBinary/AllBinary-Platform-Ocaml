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
(* import java.io.FileInputStream *)
(* import java.io.FileNotFoundException *)
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import java.nio.channels.FileChannel *)

class abFileInputStream (fileInputStream_arg) =
  object
    inherit InputStream.inputStream ()
    val mutable fileInputStream : Obj.t = Obj.repr 0
    method fileInputStream : 'r. 'r = Obj.magic fileInputStream
    method set_fileInputStream : 'v. 'v -> unit = fun value' -> fileInputStream <- Obj.repr value'
    
    

    method mark ((readlimit : int)) : unit =
        begin
        ignore ((Obj.magic fileInputStream)#mark (readlimit))
        end [@@warning "-7"]
    

    method markSupported () : bool =
        begin
        ((Obj.magic fileInputStream)#markSupported ())
        end [@@warning "-7"]
    

    method reset () : unit =
        begin
        ignore ((Obj.magic fileInputStream)#reset ())
        end [@@warning "-7"]
    

    method available () : int =
        begin
        ((Obj.magic fileInputStream)#available ())
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore ((Obj.magic fileInputStream)#close ())
        end [@@warning "-7"]
    

    method getChannel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((Obj.magic fileInputStream)#getChannel ())))
        end [@@warning "-7"]
    

    method read () : int =
        begin
        ((Obj.magic fileInputStream)#read ())
        end [@@warning "-7"]
    

    (* Java overload read(ArrayType) is not converted: OCaml has one method per name *)
    

    (* Java overload read(ArrayType, INT, INT) is not converted: OCaml has one method per name *)
    

    method skip ((n : int)) : int =
        begin
        ((Obj.magic fileInputStream)#skip (n))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        fileInputStream <- Obj.repr (fileInputStream_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbFileInputStream" (fun arguments -> Obj.repr (new abFileInputStream (Obj.obj arguments)))


