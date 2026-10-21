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
(* package org.allbinary.game.part *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let sINGLETON : PartInterface.partInterface array = (Array.make (0) (Obj.magic 0))
let get_sINGLETON () = sINGLETON
let () = java_register_static "PartInterfaceUtil.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getZeroArray () : PartInterface.partInterface array =
        begin
        sINGLETON
        end

let () = java_register_static "PartInterfaceUtil.getZeroArray" (fun arguments -> Obj.repr (getZeroArray (Obj.obj arguments)))
class partInterfaceUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PartInterfaceUtil" (fun arguments -> Obj.repr (new partInterfaceUtil (Obj.obj arguments)))


