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
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import playn.core.PlayN *)

let lOG_SUCCESS : string = "org.allbinary: "
let get_lOG_SUCCESS () = lOG_SUCCESS
let () = java_register_static "PreLogUtil.get_lOG_SUCCESS" (fun _ -> Obj.repr (get_lOG_SUCCESS ()))

let putS ((specialMessage : string), (className : string), (functionName : string)) : unit =
        begin
        let message : string ref = ref (((Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ())))#getS (className, functionName, specialMessage))) in ();
        ignore ((PlayN.log ())#debug ((java_string_of (Obj.repr (lOG_SUCCESS)) ^ !message)))
        end

and putSE : 'any4. string * string * string * 'any4 -> unit = fun ((specialMessage : string), (className : string), (functionName : string), exception_) ->
        let exception_ = Obj.repr exception_ in
        begin
        let message : string ref = ref (((Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ())))#get (className, functionName, specialMessage, exception_))) in ();
        ignore ((PlayN.log ())#error ((java_string_of (Obj.repr (lOG_SUCCESS)) ^ !message), (Obj.magic exception_)))
        end

let () = java_register_static "PreLogUtil.putS" (fun arguments -> Obj.repr (putS (Obj.obj arguments)))
let () = java_register_static "PreLogUtil.putSE" (fun arguments -> Obj.repr (putSE (Obj.obj arguments)))
class virtual preLogUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end

let put : 'any2. string * 'any2 * string -> unit = fun ((specialMessage : string), anyType, (functionName : string)) ->
        let anyType = Obj.repr anyType in
        begin
        let className : string ref = ref ((getClassName (anyType))) in ();
        if (!className = (Obj.magic 0)) then begin
            className := (CommonStrings.getInstance ())#eMPTY
        end;
        className := (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (!className))#append ((CommonSeps.getInstance ())#fORWARD_SLASH))#append (((StringUtil.getInstance ())#toString (anyType))))));
        let message : string ref = ref (((Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ())))#getS (!className, functionName, specialMessage))) in ();
        ignore ((PlayN.log ())#debug ((java_string_of (Obj.repr (lOG_SUCCESS)) ^ !message)))
        end

and putOE : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        let className : string ref = ref ((getClassName (anyType))) in ();
        if (!className = (Obj.magic 0)) then begin
            className := (CommonStrings.getInstance ())#eMPTY
        end;
        className := (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (!className))#append ((CommonSeps.getInstance ())#fORWARD_SLASH))#append (((StringUtil.getInstance ())#toString (anyType))))));
        let message : string ref = ref (((Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ())))#get (!className, functionName, specialMessage, exception_))) in ();
        ignore ((PlayN.log ())#error ((java_string_of (Obj.repr (lOG_SUCCESS)) ^ !message), (Obj.magic exception_)))
        end
let () = java_register_static "PreLogUtil.put" (fun arguments -> Obj.repr (put (Obj.obj arguments)))
let () = java_register_static "PreLogUtil.putOE" (fun arguments -> Obj.repr (putOE (Obj.obj arguments)))


