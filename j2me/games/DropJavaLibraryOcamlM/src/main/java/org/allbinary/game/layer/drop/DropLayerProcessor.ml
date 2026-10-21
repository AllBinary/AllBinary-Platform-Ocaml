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
(* package org.allbinary.game.layer.drop *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.BasicLayerProcessor *)
(* import org.allbinary.util.BasicArrayList *)

class dropLayerProcessor () =
  object (self)
    inherit BasicLayerProcessor.basicLayerProcessor ()
    
    

    method process : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        let dropLayerInterface : DropLayerInterface.dropLayerInterface ref = ref (((Obj.magic 0) :> DropLayerInterface.dropLayerInterface)) in ();
        for index = 0 to !size - 1 do
            layerInterface := (Obj.magic !list#objectArray.(index));
            dropLayerInterface := (Obj.magic !layerInterface);
            layerInterface := (Obj.magic (!dropLayerInterface#getDroppedLayer ()));
            ignore ((Obj.magic allBinaryLayerManager)#append (!layerInterface))
        done;
        ignore (!list#clear ())
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DropLayerProcessor" (fun arguments -> Obj.repr (new dropLayerProcessor (Obj.obj arguments)))

let lAYER_PROCESSOR : BasicLayerProcessor.basicLayerProcessor = ((new dropLayerProcessor ()) :> BasicLayerProcessor.basicLayerProcessor)
let get_lAYER_PROCESSOR () = lAYER_PROCESSOR
let () = java_register_static "DropLayerProcessor.get_lAYER_PROCESSOR" (fun _ -> Obj.repr (get_lAYER_PROCESSOR ()))

let getInstance () : BasicLayerProcessor.basicLayerProcessor =
        begin
        (lAYER_PROCESSOR :> BasicLayerProcessor.basicLayerProcessor)
        end
let () = java_register_static "DropLayerProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


