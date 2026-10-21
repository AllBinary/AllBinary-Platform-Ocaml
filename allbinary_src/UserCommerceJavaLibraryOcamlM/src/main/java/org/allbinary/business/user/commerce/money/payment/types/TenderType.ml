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
(* package org.allbinary.business.user.commerce.money.payment.types *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class tenderType ((name_arg : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method isEqual : 'any1. 'any1 -> bool = fun (tenderType) ->
        let tenderType = Obj.repr tenderType in
        try
        begin
        if ((String.compare (java_string_of (Obj.repr self)) ((java_string_of (Obj.repr (Obj.magic tenderType))))) == 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method toString () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        name <- name_arg
      end
  end
let () = java_register_constructor "TenderType" (fun arguments -> Obj.repr (new tenderType (Obj.obj arguments)))


