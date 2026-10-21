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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]

class itemColorFactory () =
  object
    val mutable iNVERT_PAINT : int = 0
    method iNVERT_PAINT = iNVERT_PAINT
    method set_iNVERT_PAINT value' = iNVERT_PAINT <- value'
    val mutable pAINT : int = 0
    method pAINT = pAINT
    method set_pAINT value' = pAINT <- value'
    val mutable tEXT_FIELD_NO_FOCUS : int = 0
    method tEXT_FIELD_NO_FOCUS = tEXT_FIELD_NO_FOCUS
    method set_tEXT_FIELD_NO_FOCUS value' = tEXT_FIELD_NO_FOCUS <- value'

    initializer
      begin
        iNVERT_PAINT <- 0xFF000000;
        pAINT <- 0xFFe07718;
        tEXT_FIELD_NO_FOCUS <- 0x7F7F7F;
        ()
      end
  end
let () = java_register_constructor "ItemColorFactory" (fun arguments -> Obj.repr (new itemColorFactory (Obj.obj arguments)))

let instance = (new itemColorFactory ())
let get_instance () = instance
let () = java_register_static "ItemColorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ItemColorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


