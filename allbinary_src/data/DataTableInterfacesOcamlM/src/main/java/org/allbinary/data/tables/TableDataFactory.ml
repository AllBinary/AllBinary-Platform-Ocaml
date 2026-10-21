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
(* package org.allbinary.data.tables *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonPhoneStrings *)

class tableDataFactory () =
  object
    val mutable iNTEGER_MAX_VALUE_STRING : string = ""
    method iNTEGER_MAX_VALUE_STRING = iNTEGER_MAX_VALUE_STRING
    method set_iNTEGER_MAX_VALUE_STRING value' = iNTEGER_MAX_VALUE_STRING <- value'
    val mutable zERO_STRING : string = ""
    method zERO_STRING = zERO_STRING
    method set_zERO_STRING value' = zERO_STRING <- value'

    initializer
      begin
        iNTEGER_MAX_VALUE_STRING <- (string_of_int (2147483647));
        zERO_STRING <- (CommonPhoneStrings.getInstance ())#zERO;
        ()
      end
  end
let () = java_register_constructor "TableDataFactory" (fun arguments -> Obj.repr (new tableDataFactory (Obj.obj arguments)))

let instance = (new tableDataFactory ())
let get_instance () = instance
let () = java_register_static "TableDataFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TableDataFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


