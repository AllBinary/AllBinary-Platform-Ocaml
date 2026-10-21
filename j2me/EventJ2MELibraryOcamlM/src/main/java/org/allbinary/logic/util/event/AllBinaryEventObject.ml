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
(* package org.allbinary.logic.util.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.NullUtil *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

class allBinaryEventObject ((anyType : Obj.t)) =
  object
    val mutable source : Obj.t = (Obj.magic 0)
    method source = source
    method set_source value' = source <- value'
    
    

    method getSource () : Obj.t =
        begin
        (Obj.repr (source))
        end
    

    method setSource : 'any1. 'any1 -> unit = fun (source_arg) ->
        let source_arg = Obj.repr source_arg in
        begin
        source <- source_arg
        end

    initializer
      begin
        ();
        ();
        source <- anyType
      end
  end
let () = java_register_constructor "AllBinaryEventObject" (fun arguments -> Obj.repr (new allBinaryEventObject (Obj.obj arguments)))

let nULL_EVENT = (new allBinaryEventObject ((NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_EVENT () = nULL_EVENT
let () = java_register_static "AllBinaryEventObject.get_nULL_EVENT" (fun _ -> Obj.repr (get_nULL_EVENT ()))


