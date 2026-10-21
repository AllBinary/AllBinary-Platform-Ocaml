(* Generated Code Do Not Modify *)
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)


let isKotlin () : bool =
        begin
        false
        end

and getShortName () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end

let () = java_register_static "KotlinUtil.isKotlin" (fun arguments -> Obj.repr (isKotlin (Obj.obj arguments)))
let () = java_register_static "KotlinUtil.getShortName" (fun arguments -> Obj.repr (getShortName (Obj.obj arguments)))
class kotlinUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "KotlinUtil" (fun arguments -> Obj.repr (new kotlinUtil (Obj.obj arguments)))


