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
(* package org.allbinary.game.configuration.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.GameConfiguration *)

class changedGameFeatureListener () =
  object (self)
    inherit BaseChangedGameFeatureListener.baseChangedGameFeatureListener ()
    

    method isChangedGameConfiguration : 'any1. 'any1 -> bool = fun (gameConfiguration) ->
        let gameConfiguration = Obj.repr gameConfiguration in
        begin
        ((self#list)#contains ((Obj.magic gameConfiguration)))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ChangedGameFeatureListener" (fun arguments -> Obj.repr (new changedGameFeatureListener (Obj.obj arguments)))

let gameFeatureListener = (new changedGameFeatureListener ())
let get_gameFeatureListener () = gameFeatureListener
let () = java_register_static "ChangedGameFeatureListener.get_gameFeatureListener" (fun _ -> Obj.repr (get_gameFeatureListener ()))

let getInstance () =
        begin
        gameFeatureListener
        end
let () = java_register_static "ChangedGameFeatureListener.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


