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
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.util.event.AllBinaryEventCircularPool *)

class trackingEventCircularStaticPool () =
  object
    val mutable eVENT_POOL : AllBinaryEventCircularPool.allBinaryEventCircularPool = (Obj.magic 0)
    method eVENT_POOL = eVENT_POOL
    method set_eVENT_POOL value' = eVENT_POOL <- value'
    

    method init () : unit =
        begin
        ignore (eVENT_POOL#initAllBinaryEventCircularPool ((new TrackingEventFactory.trackingEventFactory ())))
        end
    

    method getNextInstance : 'any1. 'any1 -> TrackingEvent.trackingEvent = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let trackingEvent : TrackingEvent.trackingEvent ref = ref (((Obj.magic (eVENT_POOL#getNextInstance ())) :> TrackingEvent.trackingEvent)) in ();
        ignore (!trackingEvent#setLayerInterfaceForCircularStaticPool ((Obj.magic layerInterface)));
        (!trackingEvent :> TrackingEvent.trackingEvent)
        end [@@warning "-20"]

    initializer
      begin
        eVENT_POOL <- ((new AllBinaryEventCircularPool.allBinaryEventCircularPool (20)) :> AllBinaryEventCircularPool.allBinaryEventCircularPool);
        ()
      end
  end
let () = java_register_constructor "TrackingEventCircularStaticPool" (fun arguments -> Obj.repr (new trackingEventCircularStaticPool (Obj.obj arguments)))

let instance = ref ((new trackingEventCircularStaticPool ()))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "TrackingEventCircularStaticPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        !instance
        end
let () = java_register_static "TrackingEventCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


