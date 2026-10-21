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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]

class pathData () =
  object
    val mutable oFFSET : int = 0
    method oFFSET = oFFSET
    method set_oFFSET value' = oFFSET <- value'

    initializer
      begin
        oFFSET <- 400;
        ()
      end
  end
let () = java_register_constructor "PathData" (fun arguments -> Obj.repr (new pathData (Obj.obj arguments)))

let instance = (new pathData ())
let get_instance () = instance
let () = java_register_static "PathData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PathData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


