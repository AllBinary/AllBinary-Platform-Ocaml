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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)

class layerProcessor ((layerManager_arg : LayerManager.layerManager)) =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable layerManager : LayerManager.layerManager = (Obj.magic 0)
    method layerManager = layerManager
    method set_layerManager value' = layerManager <- value'
    
    

    method processAt : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_allBinaryLayerManager, _layerInterface, (_index : int)) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method isProcessorLayer : 'any1. 'any1 -> bool = fun (_layerInterface) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method getLayerManager : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (layerManager))
        end
    

    method process : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let layerManager_arg : LayerManager.layerManager ref = ref (((self#getLayerManager ()) :> LayerManager.layerManager)) in ();
        let size : int ref = ref ((!layerManager_arg#getSize ())) in ();
        for index = 0 to !size - 1 do
            (self#processAt ((Obj.magic allBinaryLayerManager), (Obj.magic (!layerManager_arg#getLayerAt (index))), index))
        done
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        layerManager <- layerManager_arg
      end
  end
let () = java_register_constructor "LayerProcessor" (fun arguments -> Obj.repr (new layerProcessor (Obj.obj arguments)))


