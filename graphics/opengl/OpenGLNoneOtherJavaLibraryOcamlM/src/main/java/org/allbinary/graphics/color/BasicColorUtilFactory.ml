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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]


let getInstance () : BasicColorUtil.basicColorUtil =
        begin
        ((BasicColorUtil.getInstance ()) :> BasicColorUtil.basicColorUtil)
        end

let () = java_register_static "BasicColorUtilFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class basicColorUtilFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BasicColorUtilFactory" (fun arguments -> Obj.repr (new basicColorUtilFactory (Obj.obj arguments)))


