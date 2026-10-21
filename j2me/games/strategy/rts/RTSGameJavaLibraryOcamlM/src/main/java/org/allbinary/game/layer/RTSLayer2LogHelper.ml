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

class rTSLayer2LogHelper () =
  object
    

    method steeringUp : 'any1. 'any1 -> unit = fun (_pathFindingLayerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method steeringFireOrStop : 'any1. 'any1 -> unit = fun (_pathFindingLayerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildingAbove : 'any1. 'any1 -> unit = fun (_pathFindingLayerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildingChaseLeft : 'any1. 'any1 * int -> unit = fun (_pathFindingLayerInterface, (_angle : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildingChaseRight : 'any1. 'any1 * int -> unit = fun (_pathFindingLayerInterface, (_angle : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildingDown : 'any1. 'any1 -> unit = fun (_pathFindingLayerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildingChaseDown : 'any1. 'any1 * int -> unit = fun (_pathFindingLayerInterface, (_angle : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildingChaseUp : 'any1. 'any1 * int -> unit = fun (_pathFindingLayerInterface, (_angle : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildingLeft () : unit =
        begin
        ()
        end
    

    method buildingRight () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RTSLayer2LogHelper" (fun arguments -> Obj.repr (new rTSLayer2LogHelper (Obj.obj arguments)))

let instance = (new rTSLayer2LogHelper ())
let get_instance () = instance
let () = java_register_static "RTSLayer2LogHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RTSLayer2LogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


