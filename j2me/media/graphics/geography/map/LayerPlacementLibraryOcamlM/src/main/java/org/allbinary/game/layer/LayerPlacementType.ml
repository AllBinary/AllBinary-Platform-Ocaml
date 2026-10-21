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

class layerPlacementType ((type__arg : int)) =
  object
    val mutable type_ : int = 0
    method type_ = type_
    method set_type_ value' = type_ <- value'
    
    

    method getType () : int =
        begin
        type_
        end
    

    method setType ((type__arg : int)) : unit =
        begin
        type_ <- type__arg
        end

    initializer
      begin
        ();
        ();
        type_ <- type__arg
      end
  end
let () = java_register_constructor "LayerPlacementType" (fun arguments -> Obj.repr (new layerPlacementType (Obj.obj arguments)))


