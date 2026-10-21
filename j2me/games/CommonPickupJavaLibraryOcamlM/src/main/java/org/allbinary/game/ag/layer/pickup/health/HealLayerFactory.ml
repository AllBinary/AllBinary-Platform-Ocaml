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
(* package org.allbinary.game.ag.layer.pickup.health *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerFactoryInterface *)

class healLayerFactory () =
  object
    

    method getInstance () : AllBinaryLayer.allBinaryLayer =
        begin
        ((new HealLayer.healLayer ()) :> AllBinaryLayer.allBinaryLayer)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "HealLayerFactory" (fun arguments -> Obj.repr (new healLayerFactory (Obj.obj arguments)))


