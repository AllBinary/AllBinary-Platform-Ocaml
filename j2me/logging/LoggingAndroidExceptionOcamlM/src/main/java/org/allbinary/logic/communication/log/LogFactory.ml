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
[@@@warning "-20"]


let getInstance : 'any2 'any4. string * 'any2 * string * 'any4 -> Log.log = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        ((new Log.log (specialMessage, anyType, functionName, exception_)) :> Log.log)
        end

and getInstanceF : 'any2. string * 'any2 * string -> Log.log = fun ((_specialMessage : string), _anyType, (_functionName : string)) ->
        begin
        ((Obj.magic 0) :> Log.log)
        end

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

let getInstanceSE : 'any4. string * string * string * 'any4 -> Log.log = fun ((specialMessage : string), (className : string), (functionName : string), exception_) ->
        let exception_ = Obj.repr exception_ in
        begin
        ((getInstance (specialMessage, className, functionName, exception_)) :> Log.log)
        end
let () = java_register_static "LogFactory.getInstanceSE" (fun arguments -> Obj.repr (getInstanceSE (Obj.obj arguments)))


