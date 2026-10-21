(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.persistance *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonSeps *)

class platformRecordIdUtil () =
  object
    val mutable pLATFORM_SHORT_NAME : string = ""
    method pLATFORM_SHORT_NAME = pLATFORM_SHORT_NAME
    method set_pLATFORM_SHORT_NAME value' = pLATFORM_SHORT_NAME <- value'
    

    method getRecordId : 'any1. 'any1 * string -> string = fun (abeClientInformation, (baseRecordId : string)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (((Obj.magic abeClientInformation)#toShortString ())))#append ((CommonSeps.getInstance ())#uNDERSCORE))#append (pLATFORM_SHORT_NAME))#append (baseRecordId))))
        end [@@warning "-20"]

    initializer
      begin
        pLATFORM_SHORT_NAME <- "JME";
        ()
      end
  end
let () = java_register_constructor "PlatformRecordIdUtil" (fun arguments -> Obj.repr (new platformRecordIdUtil (Obj.obj arguments)))

let instance = (new platformRecordIdUtil ())
let get_instance () = instance
let () = java_register_static "PlatformRecordIdUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PlatformRecordIdUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


