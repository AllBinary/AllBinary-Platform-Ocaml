(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class propertyInitUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PropertyInitUtil" (fun arguments -> Obj.repr (new propertyInitUtil (Obj.obj arguments)))

let instance = (new propertyInitUtil ())
let get_instance () = instance
let () = java_register_static "PropertyInitUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance ((value : int)) =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("PropertyInitUtil: "))#appendint (value)))), (Obj.magic !logUtil), !commonStrings#cONSTRUCTOR));
        instance
        end
let () = java_register_static "PropertyInitUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


