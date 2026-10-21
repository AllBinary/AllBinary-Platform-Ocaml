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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]

class layerManagerLoggingBase () =
  object
    

    method append : 'any1. 'any1 -> unit = fun (_layerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method appendAt : 'any1. 'any1 * int -> unit = fun (_layerInterface, (_index : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (_layerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method removeResult : 'any1 'any2. 'any1 * 'any2 * bool -> unit = fun (_layerManager, _layerInterface, (_result : bool)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method clear () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LayerManagerLoggingBase" (fun arguments -> Obj.repr (new layerManagerLoggingBase (Obj.obj arguments)))


