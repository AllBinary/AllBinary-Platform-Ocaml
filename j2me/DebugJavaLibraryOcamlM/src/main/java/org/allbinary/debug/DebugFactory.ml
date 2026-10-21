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
(* package org.allbinary.debug *)

open Allbinary_java [@@warning "-33"]


let getInstance () : DebugInterface.debugInterface =
        begin
        ((NoDebug.getInstance ()) :> DebugInterface.debugInterface)
        end

let () = java_register_static "DebugFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class debugFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DebugFactory" (fun arguments -> Obj.repr (new debugFactory (Obj.obj arguments)))


