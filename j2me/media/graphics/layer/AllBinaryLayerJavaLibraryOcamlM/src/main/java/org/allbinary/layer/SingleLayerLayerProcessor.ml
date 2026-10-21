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

class singleLayerLayerProcessor () =
  object (self)
    inherit LayerProcessor.layerProcessor ((new SingleLayerLayerManager.singleLayerLayerManager ()))
    
    

    method process : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let layerManager : Obj.t ref = ref ((Obj.repr (self#getLayerManager ()))) in ();
        ignore (self#processAt ((Obj.magic allBinaryLayerManager), (Obj.magic ((Obj.magic !layerManager)#getLayerAt (0))), 0))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SingleLayerLayerProcessor" (fun arguments -> Obj.repr (new singleLayerLayerProcessor (Obj.obj arguments)))


