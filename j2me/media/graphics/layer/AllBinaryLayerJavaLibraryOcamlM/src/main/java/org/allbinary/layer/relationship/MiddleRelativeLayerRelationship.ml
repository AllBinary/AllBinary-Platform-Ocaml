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
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.util.BasicArrayListUtil *)

class middleRelativeLayerRelationship ((layer : AllBinaryLayer.allBinaryLayer)) =
  object
    inherit RelativeLayerRelationship.relativeLayerRelationship (layer, ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY ((layer#getHalfWidth ()), (layer#getHalfHeight ()))), ((BasicArrayListUtil.getInstance ())#getImmutableInstance ()))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MiddleRelativeLayerRelationship" (fun arguments -> Obj.repr (new middleRelativeLayerRelationship (Obj.obj arguments)))


