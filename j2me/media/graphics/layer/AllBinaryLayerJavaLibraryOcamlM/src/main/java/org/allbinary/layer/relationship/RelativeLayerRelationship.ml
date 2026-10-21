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
(* package org.allbinary.layer.relationship *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.RelativeRelationship *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.util.BasicArrayList *)

class relativeLayerRelationship ((layer_arg : AllBinaryLayer.allBinaryLayer), (point : GPoint.gPoint), (typesAllowedList : BasicArrayList.basicArrayList)) =
  object
    inherit RelativeRelationship.relativeRelationship (point, typesAllowedList) as super
    val mutable layer : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method layer = layer
    method set_layer value' = layer <- value'
    
    

    method getX () : int =
        begin
        ((layer#getXP ()) + (super#getX ()))
        end [@@warning "-7"]
    

    method getY () : int =
        begin
        ((layer#getYP ()) + (super#getY ()))
        end [@@warning "-7"]
    

    method getZ () : int =
        begin
        ((layer#getZP ()) + (super#getZ ()))
        end [@@warning "-7"]

    initializer
      begin
        layer <- ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer);
        ();
        (* super(...) is the inherit clause *) ();
        layer <- layer_arg
      end
  end
let () = java_register_constructor "RelativeLayerRelationship" (fun arguments -> Obj.repr (new relativeLayerRelationship (Obj.obj arguments)))


