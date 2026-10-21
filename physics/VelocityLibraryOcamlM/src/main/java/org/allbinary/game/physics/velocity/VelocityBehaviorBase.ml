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
(* package org.allbinary.game.physics.velocity *)

open Allbinary_java [@@warning "-33"]

class velocityBehaviorBase () =
  object
    

    method reduce : 'any1. 'any1 * int * int -> unit = fun (_velocityProperties, (_nominator : int), (_denominator : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method reduceX : 'any1. 'any1 * int * int -> unit = fun (_velocityProperties, (_nominator : int), (_denominator : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method reduceY : 'any1. 'any1 * int * int -> unit = fun (_velocityProperties, (_nominator : int), (_denominator : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "VelocityBehaviorBase" (fun arguments -> Obj.repr (new velocityBehaviorBase (Obj.obj arguments)))


