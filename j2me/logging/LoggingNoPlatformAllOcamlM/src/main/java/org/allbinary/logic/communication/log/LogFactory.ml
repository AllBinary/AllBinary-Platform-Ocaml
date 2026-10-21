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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]


let getInstanceNoF : 'any2 'any3. string * 'any2 * 'any3 -> Log.log = fun ((_specialMessage : string), _anyType, _exception_) ->
        begin
        raise (Failure ("RuntimeException"))
        end

and getInstance : 'any2 'any4. string * 'any2 * string * 'any4 -> Log.log = fun ((_specialMessage : string), _anyType, (_functionName : string), _exception_) ->
        begin
        raise (Failure ("RuntimeException"))
        end

and getInstanceF : 'any2. string * 'any2 * string -> Log.log = fun ((_specialMessage : string), _anyType, (_functionName : string)) ->
        begin
        raise (Failure ("RuntimeException"))
        end

let () = java_register_static "LogFactory.getInstanceNoF" (fun arguments -> Obj.repr (getInstanceNoF (Obj.obj arguments)))
let () = java_register_static "LogFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "LogFactory.getInstanceF" (fun arguments -> Obj.repr (getInstanceF (Obj.obj arguments)))
class logFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LogFactory" (fun arguments -> Obj.repr (new logFactory (Obj.obj arguments)))


