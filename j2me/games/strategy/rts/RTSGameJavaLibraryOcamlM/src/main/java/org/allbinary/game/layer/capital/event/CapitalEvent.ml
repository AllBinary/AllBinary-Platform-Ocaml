(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.capital.event *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class capitalEvent ((anyType : Obj.t)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable value : int = 0
    method value = value
    method set_value value' = value <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("CapitalEvent: Value: \n"));
        ignore (!stringBuffer#appendint ((self#getValue ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getValue () : int =
        begin
        value
        end [@@warning "-7"]
    

    method setValue ((value_arg : int)) : unit =
        begin
        value <- value_arg
        end [@@warning "-7"]

    initializer
      begin
        value <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CapitalEvent" (fun arguments -> Obj.repr (new capitalEvent (Obj.obj arguments)))


