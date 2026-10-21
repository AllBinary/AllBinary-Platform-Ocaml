(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.waypoint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)

class waypointRunnableSelectedLogHelper () =
  object (self)
    inherit WaypointRunnableLogHelper.waypointRunnableLogHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method start : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (commonStrings#sTART_RUNNABLE)))), self, commonStrings#rUN))
        end [@@warning "-7-20"]
    

    method end_ : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (commonStrings#eND_RUNNABLE)))), self, commonStrings#rUN))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "WaypointRunnableSelectedLogHelper" (fun arguments -> Obj.repr (new waypointRunnableSelectedLogHelper (Obj.obj arguments)))

let instanceC = (new waypointRunnableSelectedLogHelper ())
let get_instanceC () = instanceC
let () = java_register_static "WaypointRunnableSelectedLogHelper.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "WaypointRunnableSelectedLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


