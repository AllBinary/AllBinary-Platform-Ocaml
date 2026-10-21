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
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.util.CircularIndexUtil *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsProperty *)

class baseCircularPool () =
  object
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable oBJECT_ARRAY : Obj.t array = (Obj.magic 0)
    method oBJECT_ARRAY = oBJECT_ARRAY
    method set_oBJECT_ARRAY value' = oBJECT_ARRAY <- value'
    

    method getNextInstance () : Obj.t =
        begin
        let anyType : Obj.t ref = ref ((Obj.repr oBJECT_ARRAY.((circularIndexUtil#getIndex ())))) in ();
        ignore (circularIndexUtil#next ());
        (Obj.repr (!anyType))
        end
    

    method init : 'any1. 'any1 -> unit = fun (allBinaryObjectFactoryInterface) ->
        let allBinaryObjectFactoryInterface = Obj.repr allBinaryObjectFactoryInterface in
        begin
        ignore (circularIndexUtil#setIndex (0));
        let size : int ref = ref ((circularIndexUtil#getSize ())) in ();
        for index = 0 to !size - 1 do
            oBJECT_ARRAY.(index) <- (Obj.repr (((Obj.magic allBinaryObjectFactoryInterface)#getInstance ())))
        done
        end [@@warning "-20"]
    

    method getInstance ((index : int)) : Obj.t =
        begin
        (Obj.repr (oBJECT_ARRAY.(index)))
        end

    initializer
      begin
        circularIndexUtil <- ((CircularIndexUtil.get_nULL_CIRCULAR_INDEX_UTIL ()) :> CircularIndexUtil.circularIndexUtil);
        oBJECT_ARRAY <- (NullUtil.getInstance ())#nULL_OBJECT_ARRAY;
        ()
      end
  end
let () = java_register_constructor "BaseCircularPool" (fun arguments -> Obj.repr (new baseCircularPool (Obj.obj arguments)))


