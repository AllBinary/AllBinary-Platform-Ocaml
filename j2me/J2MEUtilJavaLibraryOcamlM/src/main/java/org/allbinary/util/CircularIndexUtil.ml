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
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

class circularIndexUtil ((index_arg : int), (size_arg : int)) =
  object (self)
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    val mutable lastIndex : int = 0
    method lastIndex = lastIndex
    method set_lastIndex value' = lastIndex <- value'
    val mutable size : int = 0
    method size = size
    method set_size value' = size <- value'
    
    

    method next () : int =
        begin
        if (index >= lastIndex) then begin
            index <- 0
        end else begin
            index <- index + 1
        end;
        index
        end
    

    method previous () : int =
        begin
        if (index < 1) then begin
            index <- lastIndex
        end else begin
            index <- index - 1
        end;
        index
        end
    

    method setIndex ((index_arg : int)) : unit =
        try
        begin
        if (index_arg > lastIndex) then begin
            raise (Java_return (Obj.repr (())))
        end;
        index <- index_arg
        end
        with Java_return value -> Obj.obj value
    

    method getIndex () : int =
        begin
        index
        end
    

    method setSize ((size_arg : int)) : unit =
        begin
        size <- size_arg;
        lastIndex <- (size_arg - 1);
        index <- 0
        end
    

    method getSize () : int =
        begin
        size
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#iNDEX_LABEL))#appendint (index))#append ("lastIndex: "))#appendint (lastIndex))#append ("size: "))#appendint (size))))
        end

    initializer
      begin
        index <- 0;
        lastIndex <- 0;
        size <- 0;
        ();
        (self#setSize (size_arg));
        (self#setIndex (index_arg))
      end
  end
let () = java_register_constructor "CircularIndexUtil" (fun arguments -> Obj.repr (new circularIndexUtil (Obj.obj arguments)))

let nULL_CIRCULAR_INDEX_UTIL = (new circularIndexUtil (0, 0))
let get_nULL_CIRCULAR_INDEX_UTIL () = nULL_CIRCULAR_INDEX_UTIL
let () = java_register_static "CircularIndexUtil.get_nULL_CIRCULAR_INDEX_UTIL" (fun _ -> Obj.repr (get_nULL_CIRCULAR_INDEX_UTIL ()))

let createInstance ((max : int)) =
        begin
        (new circularIndexUtil (0, max))
        end

and createInstanceAt ((index_arg : int), (max : int)) =
        begin
        (new circularIndexUtil (index_arg, max))
        end
let () = java_register_static "CircularIndexUtil.createInstance" (fun arguments -> Obj.repr (createInstance (Obj.obj arguments)))
let () = java_register_static "CircularIndexUtil.createInstanceAt" (fun arguments -> Obj.repr (createInstanceAt (Obj.obj arguments)))


