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
(* package org.allbinary.system *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)


let getInfo () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end

let () = java_register_static "Memory.getInfo" (fun arguments -> Obj.repr (getInfo (Obj.obj arguments)))
class memory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "Memory" (fun arguments -> Obj.repr (new memory (Obj.obj arguments)))


