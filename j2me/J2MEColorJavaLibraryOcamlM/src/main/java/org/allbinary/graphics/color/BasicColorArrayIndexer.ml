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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.util.CircularIndexUtil *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

class basicColorArrayIndexer ((basicColorArray_arg : BasicColor.basicColor array)) =
  object
    val mutable basicColorArray : BasicColor.basicColor array = (Obj.magic 0)
    method basicColorArray = basicColorArray
    method set_basicColorArray value' = basicColorArray <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    
    

    method next () : unit =
        begin
        ignore (circularIndexUtil#next ())
        end
    

    method get () : BasicColor.basicColor =
        begin
        (basicColorArray.((circularIndexUtil#getIndex ())) :> BasicColor.basicColor)
        end
    

    method getBasicColorArray () : BasicColor.basicColor array =
        begin
        basicColorArray
        end

    initializer
      begin
        ();
        ();
        ();
        basicColorArray <- basicColorArray_arg;
        circularIndexUtil <- (CircularIndexUtil.createInstance ((Array.length basicColorArray)))
      end
  end
let () = java_register_constructor "BasicColorArrayIndexer" (fun arguments -> Obj.repr (new basicColorArrayIndexer (Obj.obj arguments)))


