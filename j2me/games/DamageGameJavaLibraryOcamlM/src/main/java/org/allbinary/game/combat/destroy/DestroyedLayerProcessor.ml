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
(* package org.allbinary.game.combat.destroy *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEvent *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEventHandler *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.BasicLayerProcessor *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

let dESTROYED_LAYER_PROCESSOR : BasicLayerProcessor.basicLayerProcessor ref = ref (((BasicLayerProcessor.get_nULL_LAYER_PROCESSOR ()) :> BasicLayerProcessor.basicLayerProcessor))
let get_dESTROYED_LAYER_PROCESSOR () = !dESTROYED_LAYER_PROCESSOR
let set_dESTROYED_LAYER_PROCESSOR value' = dESTROYED_LAYER_PROCESSOR := value'
let () = java_register_static "DestroyedLayerProcessor.get_dESTROYED_LAYER_PROCESSOR" (fun _ -> Obj.repr (get_dESTROYED_LAYER_PROCESSOR ()))

let getInstance () : BasicLayerProcessor.basicLayerProcessor =
        begin
        (!dESTROYED_LAYER_PROCESSOR :> BasicLayerProcessor.basicLayerProcessor)
        end

let () = java_register_static "DestroyedLayerProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class destroyedLayerProcessor () =
  object (self)
    inherit BasicLayerProcessor.basicLayerProcessor ()
    
    

    method process : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let destroyedEventHandler : DestroyedEventHandler.destroyedEventHandler ref = ref (((DestroyedEventHandler.getInstance ()) :> DestroyedEventHandler.destroyedEventHandler)) in ();
        let destroyEventCircularStaticPool : DestroyEventCircularStaticPool.destroyEventCircularStaticPool ref = ref (((DestroyEventCircularStaticPool.getInstance ()) :> DestroyEventCircularStaticPool.destroyEventCircularStaticPool)) in ();
        let destroyedEvent : DestroyedEvent.destroyedEvent ref = ref (((Obj.magic 0) :> DestroyedEvent.destroyedEvent)) in ();
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        for index = 0 to !size - 1 do
            let layerInterfaceCanBeNull : Obj.t ref = ref ((Obj.repr !list#objectArray.(index))) in ();
            if (!layerInterfaceCanBeNull != (Obj.magic 0)) then begin
                layerInterface := (Obj.magic !layerInterfaceCanBeNull);
                ignore ((Obj.magic allBinaryLayerManager)#remove (!layerInterface));
                destroyedEvent := (!destroyEventCircularStaticPool#getInstanceForLayer (!layerInterface));
                ignore (!destroyedEventHandler#fireEvent (!destroyedEvent))
            end else begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ()
            end
        done;
        ignore (!list#clear ())
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DestroyedLayerProcessor" (fun arguments -> Obj.repr (new destroyedLayerProcessor (Obj.obj arguments)))

let init () : unit =
        begin
        dESTROYED_LAYER_PROCESSOR := (new destroyedLayerProcessor ())
        end
let () = java_register_static "DestroyedLayerProcessor.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))


