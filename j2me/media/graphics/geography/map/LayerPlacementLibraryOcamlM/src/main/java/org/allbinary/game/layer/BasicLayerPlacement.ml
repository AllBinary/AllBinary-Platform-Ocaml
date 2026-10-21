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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class basicLayerPlacement ((layerType_arg : LayerPlacementType.layerPlacementType), (width_arg : int), (height_arg : int)) =
  object
    val mutable layerType : LayerPlacementType.layerPlacementType = (Obj.magic 0)
    method layerType = layerType
    method set_layerType value' = layerType <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    
    

    method getWidth () : int =
        begin
        width
        end
    

    method getHeight () : int =
        begin
        height
        end
    

    method getLayerType () : LayerPlacementType.layerPlacementType =
        begin
        (layerType :> LayerPlacementType.layerPlacementType)
        end
    

    method setLayerType : 'any1. 'any1 -> unit = fun (layerType_arg) ->
        let layerType_arg = Obj.repr layerType_arg in
        begin
        layerType <- (Obj.magic layerType_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        layerType <- layerType_arg;
        width <- width_arg;
        height <- height_arg
      end
  end
let () = java_register_constructor "BasicLayerPlacement" (fun arguments -> Obj.repr (new basicLayerPlacement (Obj.obj arguments)))


