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
(* package org.allbinary.graphics.threed *)

open Allbinary_java [@@warning "-33"]

class gLHolder () =
  object
    val mutable isCreated : bool = false
    method isCreated = isCreated
    method set_isCreated value' = isCreated <- value'
    
    

    method runOnSurfaceCreated : 'any1. 'any1 -> unit = fun (_renderer) ->
        begin
        ()
        end
    

    method runOnSurfaceChanged : 'any1. 'any1 * int * int -> unit = fun (_renderer, (_width : int), (_height : int)) ->
        begin
        ()
        end
    

    method run : 'any1. 'any1 -> unit = fun (_renderer) ->
        begin
        ()
        end

    initializer
      begin
        isCreated <- true;
        ();
        ()
      end
  end
let () = java_register_constructor "GLHolder" (fun arguments -> Obj.repr (new gLHolder (Obj.obj arguments)))


