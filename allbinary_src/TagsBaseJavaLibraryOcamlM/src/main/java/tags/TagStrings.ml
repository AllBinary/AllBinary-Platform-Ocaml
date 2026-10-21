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
(* package tags *)

open Allbinary_java [@@warning "-33"]

class tagStrings () =
  object
    val mutable dO_START_TAG : string = ""
    method dO_START_TAG = dO_START_TAG
    method set_dO_START_TAG value' = dO_START_TAG <- value'

    initializer
      begin
        dO_START_TAG <- "doStartTag";
        ()
      end
  end
let () = java_register_constructor "TagStrings" (fun arguments -> Obj.repr (new tagStrings (Obj.obj arguments)))

let instance = (new tagStrings ())
let get_instance () = instance
let () = java_register_static "TagStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TagStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


