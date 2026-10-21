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
(* import org.allbinary.logic.string.StringUtil *)

let lOG : Log.log = ((new Log.log ((StringUtil.getInstance ())#eMPTY_STRING, (NullUtil.getInstance ())#nULL_OBJECT, (StringUtil.getInstance ())#eMPTY_STRING, (NullUtil.getInstance ())#nULL_OBJECT)) :> Log.log)
let get_lOG () = lOG
let () = java_register_static "LogFactory.get_lOG" (fun _ -> Obj.repr (get_lOG ()))

let getInstanceD () : Log.log =
        begin
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let nullUtil : NullUtil.nullUtil ref = ref (((NullUtil.getInstance ()) :> NullUtil.nullUtil)) in ();
        ((new Log.log (!stringUtil#eMPTY_STRING, !nullUtil#nULL_OBJECT, !stringUtil#eMPTY_STRING, !nullUtil#nULL_OBJECT)) :> Log.log)
        end

and getInstance : 'any2 'any4. string * 'any2 * string * 'any4 -> Log.log = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        ((new Log.log (specialMessage, anyType, functionName, exception_)) :> Log.log)
        end

and getInstanceF : 'any2. string * 'any2 * string -> Log.log = fun ((_specialMessage : string), _anyType, (_functionName : string)) ->
        begin
        (lOG :> Log.log)
        end

let () = java_register_static "LogFactory.getInstanceD" (fun arguments -> Obj.repr (getInstanceD (Obj.obj arguments)))
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


