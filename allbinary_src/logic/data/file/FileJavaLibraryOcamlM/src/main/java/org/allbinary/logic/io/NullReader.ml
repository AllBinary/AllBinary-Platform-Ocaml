(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
(* import java.io.IOException *)
(* import java.io.Reader *)

class nullReader () =
  object
    inherit java_reader ()
    

    method read () : int =
        begin
        (- 1)
        end [@@warning "-7"]
    

    (* Java overload read(ArrayType, INT, INT) is not converted: OCaml has one method per name *)
    

    method ready () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method skip ((_n : int)) : int =
        begin
        0
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullReader" (fun arguments -> Obj.repr (new nullReader (Obj.obj arguments)))

let nULL_READER = (new nullReader ())
let get_nULL_READER () = nULL_READER
let () = java_register_static "NullReader.get_nULL_READER" (fun _ -> Obj.repr (get_nULL_READER ()))


