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
(* package org.allbinary.game.layer.resources *)

open Allbinary_java [@@warning "-33"]

class onDemandResourcesFactory () =
  object
    

    method size () : int =
        begin
        0
        end
    

    method remove ((_layerId : int)) : OnDemandResources.onDemandResources =
        begin
        ((OnDemandResources.get_nULL_ON_DEMAND_RESOURCES ()) :> OnDemandResources.onDemandResources)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OnDemandResourcesFactory" (fun arguments -> Obj.repr (new onDemandResourcesFactory (Obj.obj arguments)))


