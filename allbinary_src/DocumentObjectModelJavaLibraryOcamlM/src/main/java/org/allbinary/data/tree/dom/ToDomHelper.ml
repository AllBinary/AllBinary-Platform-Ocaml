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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringUtil *)


let convertNull ((value : string)) : string =
        let value = ref value in
        begin
        if (!value = (Obj.magic 0)) then begin
            value := (StringUtil.getInstance ())#nULL_STRING
        end;
        !value
        end

let () = java_register_static "ToDomHelper.convertNull" (fun arguments -> Obj.repr (convertNull (Obj.obj arguments)))
class toDomHelper () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ToDomHelper" (fun arguments -> Obj.repr (new toDomHelper (Obj.obj arguments)))


