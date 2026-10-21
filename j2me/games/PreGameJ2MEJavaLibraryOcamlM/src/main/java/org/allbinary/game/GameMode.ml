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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class gameMode ((name_arg : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getName () : string =
        begin
        name
        end
    

    method toString () : string =
        begin
        (self#getName ())
        end

    initializer
      begin
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        (self#setName (name_arg))
      end
  end
let () = java_register_constructor "GameMode" (fun arguments -> Obj.repr (new gameMode (Obj.obj arguments)))

let nONE = ref ((new gameMode ((StringUtil.getInstance ())#nULL_STRING)))
let get_nONE () = !nONE
let set_nONE value' = nONE := value'
let () = java_register_static "GameMode.get_nONE" (fun _ -> Obj.repr (get_nONE ()))

let sERVER = ref ((new gameMode ("Server")))
let get_sERVER () = !sERVER
let set_sERVER value' = sERVER := value'
let () = java_register_static "GameMode.get_sERVER" (fun _ -> Obj.repr (get_sERVER ()))

let cLIENT = ref ((new gameMode ("Client")))
let get_cLIENT () = !cLIENT
let set_cLIENT value' = cLIENT := value'
let () = java_register_static "GameMode.get_cLIENT" (fun _ -> Obj.repr (get_cLIENT ()))


