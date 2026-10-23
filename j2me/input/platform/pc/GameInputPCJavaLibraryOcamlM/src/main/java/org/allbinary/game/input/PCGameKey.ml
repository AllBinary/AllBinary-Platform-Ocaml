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

let () = java_register_static "PCGameKey.getString" (fun arguments -> Obj.repr (getString (Obj.obj arguments)))
class pCGameKey ((keyCode : int), (name : string)) =
  object (self)
    inherit Input.input (keyCode, name) as super
    
    

    method toString () : string =
        begin
        ("PCGameKey: " ^ (super#toString ()))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let id : int ref = ref ((self#getId ())) in ();
        if (!id >= 0) then begin
            ignore ((InputFactory.getInstance ())#add (!id, self))
        end
      end
  end
let () = java_register_constructor "PCGameKey" (fun arguments -> Obj.repr (new pCGameKey (Obj.obj arguments)))


