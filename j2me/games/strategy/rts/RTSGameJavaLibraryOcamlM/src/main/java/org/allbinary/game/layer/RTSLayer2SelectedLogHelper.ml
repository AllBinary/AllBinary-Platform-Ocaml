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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class rTSLayer2SelectedLogHelper () =
  object (self)
    inherit RTSLayer2LogHelper.rTSLayer2LogHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tRACK_TO_FIRE_OR_MOVE : string = ""
    method tRACK_TO_FIRE_OR_MOVE = tRACK_TO_FIRE_OR_MOVE
    method set_tRACK_TO_FIRE_OR_MOVE value' = tRACK_TO_FIRE_OR_MOVE <- value'
    val mutable bUILDING_CHASE : string = ""
    method bUILDING_CHASE = bUILDING_CHASE
    method set_bUILDING_CHASE value' = bUILDING_CHASE <- value'
    

    method steeringUp : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" steering - Up")))), self, tRACK_TO_FIRE_OR_MOVE))
        end [@@warning "-7-20"]
    

    method steeringFireOrStop : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" steering - Fire/All Stop")))), self, tRACK_TO_FIRE_OR_MOVE))
        end [@@warning "-7-20"]
    

    method buildingAbove : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" Building Above")))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]
    

    method buildingChaseLeft : 'any1. 'any1 * int -> unit = fun (pathFindingLayerInterface, (angle : int)) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" steering - Going Left: "))#appendint (angle)))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]
    

    method buildingChaseRight : 'any1. 'any1 * int -> unit = fun (pathFindingLayerInterface, (angle : int)) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" steering - Going Right: "))#appendint (angle)))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]
    

    method buildingDown : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" Building Below")))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]
    

    method buildingChaseDown : 'any1. 'any1 * int -> unit = fun (pathFindingLayerInterface, (angle : int)) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" steering - Going Down: "))#appendint (angle)))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]
    

    method buildingChaseUp : 'any1. 'any1 * int -> unit = fun (pathFindingLayerInterface, (angle : int)) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" steering - Going Up: "))#appendint (angle)))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]
    

    method buildingLeft : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" Building Left")))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]
    

    method buildingRight : 'any1. 'any1 -> unit = fun (pathFindingLayerInterface) ->
        let pathFindingLayerInterface = Obj.repr pathFindingLayerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((Obj.magic pathFindingLayerInterface)#getName ())))#append (" Building Right")))), self, bUILDING_CHASE))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tRACK_TO_FIRE_OR_MOVE <- "trackTo:fireOrMove";
        bUILDING_CHASE <- "buildingChase";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSLayer2SelectedLogHelper" (fun arguments -> Obj.repr (new rTSLayer2SelectedLogHelper (Obj.obj arguments)))

let instanceC = (new rTSLayer2SelectedLogHelper ())
let get_instanceC () = instanceC
let () = java_register_static "RTSLayer2SelectedLogHelper.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "RTSLayer2SelectedLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


