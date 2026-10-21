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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)


let getString ((keyCode : int)) : string =
        try
        begin
        let input : Obj.t ref = ref ((Obj.repr ((InputFactory.getInstance ())#getInstanceById (keyCode)))) in ();
        if ((Obj.magic !input) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (((Obj.magic !input)#getName ()))))
        end else begin
            raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "J2MEGameKey.getString" (fun arguments -> Obj.repr (getString (Obj.obj arguments)))
class j2MEGameKey ((key : int), (keyName : string)) =
  object (self)
    inherit Input.input (key, keyName)
    
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("J2MEGameKey: "))#append ((java_string_of (Obj.repr super))))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let id : int ref = ref ((self#getId ())) in ();
        if (!id >= 0) then begin
            let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
            ignore (!inputFactory#add (!id, self))
        end
      end
  end
let () = java_register_constructor "J2MEGameKey" (fun arguments -> Obj.repr (new j2MEGameKey (Obj.obj arguments)))


