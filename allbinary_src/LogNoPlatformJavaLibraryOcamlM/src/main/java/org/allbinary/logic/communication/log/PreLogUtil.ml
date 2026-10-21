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
(* import org.allbinary.logic.NullUtil *)


let putOE : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((_specialMessage : string), _anyType, (_functionName : string), _exception_) ->
        begin
        raise (Failure ("RuntimeException"))
        end

and putSE : 'any4. string * string * string * 'any4 -> unit = fun ((_specialMessage : string), (_className : string), (_functionName : string), _exception_) ->
        begin
        raise (Failure ("RuntimeException"))
        end

let () = java_register_static "PreLogUtil.putOE" (fun arguments -> Obj.repr (putOE (Obj.obj arguments)))
let () = java_register_static "PreLogUtil.putSE" (fun arguments -> Obj.repr (putSE (Obj.obj arguments)))
class preLogUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PreLogUtil" (fun arguments -> Obj.repr (new preLogUtil (Obj.obj arguments)))

let put : 'any2. string * 'any2 * string -> unit = fun ((specialMessage : string), anyType, (functionName : string)) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (putOE (specialMessage, anyType, functionName, (NullUtil.getInstance ())#nULL_OBJECT))
        end
let () = java_register_static "PreLogUtil.put" (fun arguments -> Obj.repr (put (Obj.obj arguments)))


