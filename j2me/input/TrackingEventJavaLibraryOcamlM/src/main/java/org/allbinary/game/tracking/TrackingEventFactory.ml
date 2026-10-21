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
(* package org.allbinary.game.tracking *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface *)

class trackingEventFactory () =
  object
    
    

    method getInstance () : AllBinaryEventObject.allBinaryEventObject =
        begin
        ((new TrackingEvent.trackingEvent ((TrackingEventHandler.getInstance ()))) :> AllBinaryEventObject.allBinaryEventObject)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TrackingEventFactory" (fun arguments -> Obj.repr (new trackingEventFactory (Obj.obj arguments)))


