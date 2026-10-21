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
(* package org.allbinary.game.combat.destroy.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.util.event.AllBinaryEventCircularPool *)

class destroyEventCircularStaticPool () =
  object
    val mutable eVENT_POOL : AllBinaryEventCircularPool.allBinaryEventCircularPool = (Obj.magic 0)
    method eVENT_POOL = eVENT_POOL
    method set_eVENT_POOL value' = eVENT_POOL <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (combatGameCanvas) ->
        let combatGameCanvas = Obj.repr combatGameCanvas in
        begin
        ignore (eVENT_POOL#initAllBinaryEventCircularPool ((new DestroyEventFactory.destroyEventFactory ((Obj.magic combatGameCanvas)))))
        end [@@warning "-20"]
    

    method getInstanceForLayer : 'any1. 'any1 -> DestroyedEvent.destroyedEvent = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let destroyedEvent : DestroyedEvent.destroyedEvent ref = ref (((Obj.magic (eVENT_POOL#getNextInstance ())) :> DestroyedEvent.destroyedEvent)) in ();
        ignore (!destroyedEvent#setLayerInterfaceForCircularStaticPool ((Obj.magic layerInterface)));
        (!destroyedEvent :> DestroyedEvent.destroyedEvent)
        end [@@warning "-20"]

    initializer
      begin
        eVENT_POOL <- ((new AllBinaryEventCircularPool.allBinaryEventCircularPool (20)) :> AllBinaryEventCircularPool.allBinaryEventCircularPool);
        ();
        ()
      end
  end
let () = java_register_constructor "DestroyEventCircularStaticPool" (fun arguments -> Obj.repr (new destroyEventCircularStaticPool (Obj.obj arguments)))

let instance = (new destroyEventCircularStaticPool ())
let get_instance () = instance
let () = java_register_static "DestroyEventCircularStaticPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DestroyEventCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


