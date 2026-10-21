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
(* package org.allbinary.logic.control.validate *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)
(* import org.allbinary.util.ABHashtable *)

class validatorBase () =
  object
    
    

    method isValid () : bool =
        begin
        (BooleanFactory.getInstance ())#tRUE
        end
    

    method validationInfo () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method toHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end
    

    method toList () : BasicArrayList.basicArrayList =
        begin
        (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ValidatorBase" (fun arguments -> Obj.repr (new validatorBase (Obj.obj arguments)))

let instance = (new validatorBase ())
let get_instance () = instance
let () = java_register_static "ValidatorBase.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ValidatorBase.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


