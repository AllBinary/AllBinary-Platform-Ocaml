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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.displayable.StateControlledInterface *)

class statePaintable () =
  object
    inherit Paintable.paintable ()
    
    

    method setState ((_state : int)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "StatePaintable" (fun arguments -> Obj.repr (new statePaintable (Obj.obj arguments)))


