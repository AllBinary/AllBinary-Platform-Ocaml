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
(* package org.allbinary.game.terrain *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventCircularPool *)

class terrainEventCircularStaticPool () =
  object
    val mutable eVENT_POOL : AllBinaryEventCircularPool.allBinaryEventCircularPool = (Obj.magic 0)
    method eVENT_POOL = eVENT_POOL
    method set_eVENT_POOL value' = eVENT_POOL <- value'
    

    method init () : unit =
        begin
        ignore (eVENT_POOL#initAllBinaryEventCircularPool ((new TerrainEventFactory.terrainEventFactory ())))
        end
    

    method getNext : 'any1. 'any1 -> TerrainEvent.terrainEvent = fun (basicTerrainInfo) ->
        let basicTerrainInfo = Obj.repr basicTerrainInfo in
        begin
        let trackingEvent : TerrainEvent.terrainEvent ref = ref (((Obj.magic (eVENT_POOL#getNextInstance ())) :> TerrainEvent.terrainEvent)) in ();
        ignore (!trackingEvent#setBasicTerrainInfoForCircularStaticPool ((Obj.magic basicTerrainInfo)));
        (!trackingEvent :> TerrainEvent.terrainEvent)
        end [@@warning "-20"]

    initializer
      begin
        eVENT_POOL <- ((new AllBinaryEventCircularPool.allBinaryEventCircularPool (20)) :> AllBinaryEventCircularPool.allBinaryEventCircularPool);
        ()
      end
  end
let () = java_register_constructor "TerrainEventCircularStaticPool" (fun arguments -> Obj.repr (new terrainEventCircularStaticPool (Obj.obj arguments)))

let instance = (new terrainEventCircularStaticPool ())
let get_instance () = instance
let () = java_register_static "TerrainEventCircularStaticPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TerrainEventCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


