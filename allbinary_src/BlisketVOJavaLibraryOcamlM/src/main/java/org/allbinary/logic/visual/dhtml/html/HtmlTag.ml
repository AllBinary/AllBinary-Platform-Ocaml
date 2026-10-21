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
(* package org.allbinary.logic.visual.dhtml.html *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.StdUtil *)

class htmlTag () =
  object
    val mutable otherAttributes : java_hash_map = (Obj.magic 0)
    method otherAttributes = otherAttributes
    method set_otherAttributes value' = otherAttributes <- value'
    
    

    method addAttribute ((key : string), (value : string)) : unit =
        begin
        ignore (otherAttributes#put (key, value))
        end

    initializer
      begin
        ();
        ();
        otherAttributes <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ())
      end
  end
let () = java_register_constructor "HtmlTag" (fun arguments -> Obj.repr (new htmlTag (Obj.obj arguments)))


