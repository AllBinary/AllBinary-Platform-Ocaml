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
(* package org.allbinary.bounds.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class boundsChangeEvent (rectangle) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (rectangle)
    
    

    method getRectangle : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (self#getSource ()))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "BoundsChangeEvent" (fun arguments -> Obj.repr (new boundsChangeEvent (Obj.obj arguments)))


