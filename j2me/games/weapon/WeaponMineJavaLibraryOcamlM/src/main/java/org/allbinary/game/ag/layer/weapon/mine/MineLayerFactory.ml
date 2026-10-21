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
(* package org.allbinary.game.ag.layer.weapon.mine *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerFactoryInterface *)
(* import org.allbinary.view.ViewPositionFactoryInterface *)

class mineLayerFactory ((viewPositionFactoryInterface_arg : ViewPositionFactoryInterface.viewPositionFactoryInterface)) =
  object
    val mutable viewPositionFactoryInterface : ViewPositionFactoryInterface.viewPositionFactoryInterface = (Obj.magic 0)
    method viewPositionFactoryInterface = viewPositionFactoryInterface
    method set_viewPositionFactoryInterface value' = viewPositionFactoryInterface <- value'
    
    

    method getInstance () : AllBinaryLayer.allBinaryLayer =
        begin
        ((new MineLayer.mineLayer ((viewPositionFactoryInterface#getInstance ()))) :> AllBinaryLayer.allBinaryLayer)
        end

    initializer
      begin
        ();
        ();
        viewPositionFactoryInterface <- viewPositionFactoryInterface_arg
      end
  end
let () = java_register_constructor "MineLayerFactory" (fun arguments -> Obj.repr (new mineLayerFactory (Obj.obj arguments)))


