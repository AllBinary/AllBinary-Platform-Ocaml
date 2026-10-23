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

let () = java_register_static "AndroidGameKey.getString" (fun arguments -> Obj.repr (getString (Obj.obj arguments)))
class androidGameKey ((keyCode : int), (name : string)) =
  object (self)
    inherit Input.input (keyCode, name) as super
    
    

    method toString () : string =
        begin
        ("AndroidGameKey: " ^ (super#toString ()))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
        !inputFactory#inputIntegerArray.((self#getId ())) <- self
      end
  end
let () = java_register_constructor "AndroidGameKey" (fun arguments -> Obj.repr (new androidGameKey (Obj.obj arguments)))


