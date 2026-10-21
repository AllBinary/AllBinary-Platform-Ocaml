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
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory *)

class postGameCommandFactory () =
  object
    

    method addCommands : 'any1. 'any1 -> unit = fun (canvas) ->
        let canvas = Obj.repr canvas in
        begin
        ignore ((Obj.magic (java_call_static "MultiPlayerGameFeatureFactory.getInstance" (Obj.repr ())))#addCommands ((Obj.magic canvas)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PostGameCommandFactory" (fun arguments -> Obj.repr (new postGameCommandFactory (Obj.obj arguments)))

let instance = (new postGameCommandFactory ())
let get_instance () = instance
let () = java_register_static "PostGameCommandFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PostGameCommandFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


