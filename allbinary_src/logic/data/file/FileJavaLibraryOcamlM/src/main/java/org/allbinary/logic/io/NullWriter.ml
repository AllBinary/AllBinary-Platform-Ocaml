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
(* import java.io.Writer *)

class nullWriter () =
  object
    inherit java_writer ()
    

    method write ((_c : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    (* Java overload write(ArrayType, INT, INT) is not converted: OCaml has one method per name *)
    

    (* Java overload write(String) is not converted: OCaml has one method per name *)
    

    (* Java overload write(String, INT, INT) is not converted: OCaml has one method per name *)
    

    method flush () : unit =
        begin
        ()
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
let () = java_register_constructor "NullWriter" (fun arguments -> Obj.repr (new nullWriter (Obj.obj arguments)))

let nULL_WRITER = (new nullWriter ())
let get_nULL_WRITER () = nULL_WRITER
let () = java_register_static "NullWriter.get_nULL_WRITER" (fun _ -> Obj.repr (get_nULL_WRITER ()))


