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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.LayerProcessor *)

class gameInputLayerProcessor () =
  object
    inherit LayerProcessor.layerProcessor ((new GameInputLayerManager.gameInputLayerManager ()))
    
    

    method processAt : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (allBinaryLayerManager, layerInterface, (_index : int)) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        let layerInterface = Obj.repr layerInterface in
        begin
        let gameInputInterface : GameInputInterface.gameInputInterface ref = ref (((Obj.magic (Obj.magic layerInterface)) :> GameInputInterface.gameInputInterface)) in ();
        ignore (!gameInputInterface#processInput ((Obj.magic allBinaryLayerManager)))
        end [@@warning "-7-20"]
    

    method isProcessorLayer : 'any1. 'any1 -> bool = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        if ((Obj.magic layerInterface)#implmentsGameInputInterface ()) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameInputLayerProcessor" (fun arguments -> Obj.repr (new gameInputLayerProcessor (Obj.obj arguments)))


