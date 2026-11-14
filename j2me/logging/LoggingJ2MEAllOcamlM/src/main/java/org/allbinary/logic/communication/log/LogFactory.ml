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
(* import org.allbinary.logic.string.StringUtil *)


let getInstanceD : 'return. unit -> 'return = fun () ->
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let nullUtil : NullUtil.nullUtil ref = ref (((NullUtil.getInstance ()) :> NullUtil.nullUtil)) in ();
        (Obj.magic ((new Log.log (!stringUtil#eMPTY_STRING, (Obj.repr (!nullUtil#nULL_OBJECT)), !stringUtil#eMPTY_STRING, (Obj.repr (!nullUtil#nULL_OBJECT))))))
        end

and getInstanceNoF : 'any2 'any3 'return. string * 'any2 * 'any3 -> 'return = fun ((specialMessage : string), anyType, exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        (Obj.magic ((new Log.log (specialMessage, (Obj.repr (anyType)), (StringUtil.getInstance ())#eMPTY_STRING, (Obj.repr (exception_))))))
        end

and getInstance : 'any2 'any4 'return. string * 'any2 * string * 'any4 -> 'return = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        (Obj.magic ((new Log.log (specialMessage, (Obj.repr (anyType)), functionName, (Obj.repr (exception_))))))
        end

and getInstanceF : 'any2 'return. string * 'any2 * string -> 'return = fun ((specialMessage : string), anyType, (functionName : string)) ->
        let anyType = Obj.repr anyType in
        begin
        let nullUtil : NullUtil.nullUtil ref = ref (((NullUtil.getInstance ()) :> NullUtil.nullUtil)) in ();
        (Obj.magic ((new Log.log (specialMessage, (Obj.repr (anyType)), functionName, (Obj.repr (!nullUtil#nULL_OBJECT))))))
        end

let () = java_register_static "LogFactory.getInstanceD" (fun arguments -> Obj.repr (getInstanceD (Obj.obj arguments)))
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


