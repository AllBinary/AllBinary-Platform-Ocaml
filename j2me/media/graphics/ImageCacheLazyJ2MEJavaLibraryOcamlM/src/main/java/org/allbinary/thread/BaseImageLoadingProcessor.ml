(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]

class baseImageLoadingProcessor () =
  object
    

    method runTask () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BaseImageLoadingProcessor" (fun arguments -> Obj.repr (new baseImageLoadingProcessor (Obj.obj arguments)))

let instance = (new baseImageLoadingProcessor ())
let get_instance () = instance
let () = java_register_static "BaseImageLoadingProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BaseImageLoadingProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


