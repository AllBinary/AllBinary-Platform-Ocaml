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
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogFormatUtil *)

let lABEL : string = "org.allbinary"
let get_lABEL () = lABEL
let () = java_register_static "PreLogUtil.get_lABEL" (fun _ -> Obj.repr (get_lABEL ()))

let putOE : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        let className : string ref = ref (lABEL) in ();
        let actualClassName : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
        if (!actualClassName <> (Obj.magic 0)) then begin
            className := !actualClassName
        end;
        let message : string ref = ref (((Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ())))#get (!className, functionName, specialMessage, exception_))) in ();
        ignore ((android.get_util ())#log#i (lABEL, !message))
        end

and putSE : 'any4. string * string * string * 'any4 -> unit = fun ((specialMessage : string), (className : string), (functionName : string), exception_) ->
        let exception_ = Obj.repr exception_ in
        begin
        let message : string ref = ref (((Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ())))#get (className, functionName, specialMessage, exception_))) in ();
        ignore ((android.get_util ())#log#i (className, !message))
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

and putS ((specialMessage : string), (className : string), (functionName : string)) : unit =
        begin
        ignore (putSE (specialMessage, className, functionName, (NullUtil.getInstance ())#nULL_OBJECT))
        end
let () = java_register_static "PreLogUtil.put" (fun arguments -> Obj.repr (put (Obj.obj arguments)))
let () = java_register_static "PreLogUtil.putS" (fun arguments -> Obj.repr (putS (Obj.obj arguments)))


