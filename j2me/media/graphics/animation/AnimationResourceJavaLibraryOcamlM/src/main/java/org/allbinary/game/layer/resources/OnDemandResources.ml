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
[@@@warning "-20"]
(* import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class onDemandResources () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method waitFor () : unit =
        begin
        ()
        end
    

    method init () : unit =
        begin
        ()
        end
    

    method initAt : 'any1 'any2. 'any1 * 'any2 * int * string * int -> int = fun (_imageCache, _resourceAnimationInterfaceFactoryInterfaceFactory, (_portion : int), (_loadingString : string), (_index : int)) ->
        begin
        0
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OnDemandResources" (fun arguments -> Obj.repr (new onDemandResources (Obj.obj arguments)))

let nULL_ON_DEMAND_RESOURCES = (new onDemandResources ())
let get_nULL_ON_DEMAND_RESOURCES () = nULL_ON_DEMAND_RESOURCES
let () = java_register_static "OnDemandResources.get_nULL_ON_DEMAND_RESOURCES" (fun _ -> Obj.repr (get_nULL_ON_DEMAND_RESOURCES ()))


