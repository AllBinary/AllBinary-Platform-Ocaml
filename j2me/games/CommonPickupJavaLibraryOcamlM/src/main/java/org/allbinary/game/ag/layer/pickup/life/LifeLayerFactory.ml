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
(* package org.allbinary.game.ag.layer.pickup.life *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerFactoryInterface *)

class lifeLayerFactory () =
  object
    

    method getInstance () : AllBinaryLayer.allBinaryLayer =
        begin
        ((new LifeLayer.lifeLayer ()) :> AllBinaryLayer.allBinaryLayer)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LifeLayerFactory" (fun arguments -> Obj.repr (new lifeLayerFactory (Obj.obj arguments)))


