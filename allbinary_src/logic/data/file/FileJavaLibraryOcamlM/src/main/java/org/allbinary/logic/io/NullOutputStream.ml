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
(* import java.io.OutputStream *)

class nullOutputStream () =
  object
    inherit java_output_stream ()
    

    method write ((_b : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    (* Java overload write(ArrayType, INT, INT) is not converted: OCaml has one method per name *)
    

    method close () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullOutputStream" (fun arguments -> Obj.repr (new nullOutputStream (Obj.obj arguments)))

let nULL_OUTPUT_STREAM = (new nullOutputStream ())
let get_nULL_OUTPUT_STREAM () = nULL_OUTPUT_STREAM
let () = java_register_static "NullOutputStream.get_nULL_OUTPUT_STREAM" (fun _ -> Obj.repr (get_nULL_OUTPUT_STREAM ()))


