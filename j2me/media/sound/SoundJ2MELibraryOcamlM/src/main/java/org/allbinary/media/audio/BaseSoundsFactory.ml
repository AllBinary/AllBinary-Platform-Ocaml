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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class baseSoundsFactory () =
  object
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    

    method init () : unit =
        begin
        ()
        end
    

    method getSoundInterfaceArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Array.make (0) (Obj.magic 0))))
        end
    

    method setInitialized ((initialized_arg : bool)) : unit =
        begin
        initialized <- initialized_arg
        end
    

    method isInitialized () : bool =
        begin
        initialized
        end

    initializer
      begin
        initialized <- false;
        ()
      end
  end
let () = java_register_constructor "BaseSoundsFactory" (fun arguments -> Obj.repr (new baseSoundsFactory (Obj.obj arguments)))


