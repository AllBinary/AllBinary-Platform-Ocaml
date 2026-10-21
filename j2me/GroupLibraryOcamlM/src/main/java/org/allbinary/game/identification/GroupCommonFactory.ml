(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.identification *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GroupCommonFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class groupCommonFactory () =
  object
    val mutable iD : int = (Obj.magic 0)
    method iD = iD
    method set_iD value' = iD <- value'
    val mutable gROUP_NAME_LABEL : string = ""
    method gROUP_NAME_LABEL = gROUP_NAME_LABEL
    method set_gROUP_NAME_LABEL value' = gROUP_NAME_LABEL <- value'
    val mutable iD_LABEL : string = ""
    method iD_LABEL = iD_LABEL
    method set_iD_LABEL value' = iD_LABEL <- value'
    val mutable aDDING_LABEL : string = ""
    method aDDING_LABEL = aDDING_LABEL
    method set_aDDING_LABEL value' = aDDING_LABEL <- value'
    val mutable tO_LABEL : string = ""
    method tO_LABEL = tO_LABEL
    method set_tO_LABEL value' = tO_LABEL <- value'

    initializer
      begin
        iD <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (10));
        gROUP_NAME_LABEL <- "Group Name: ";
        iD_LABEL <- " Id: ";
        aDDING_LABEL <- "Adding: ";
        tO_LABEL <- " to: ";
        ()
      end
  end
let () = java_register_constructor "GroupCommonFactory" (fun arguments -> Obj.repr (new groupCommonFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new groupCommonFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GroupCommonFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


