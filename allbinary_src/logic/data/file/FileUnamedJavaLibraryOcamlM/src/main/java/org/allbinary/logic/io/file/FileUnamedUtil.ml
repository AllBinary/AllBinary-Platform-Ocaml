(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonSeps *)

class fileUnamedUtil () =
  object
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    

    method process ((string : string)) : string =
        begin
        let simplifiedString : string ref = ref ((String.lowercase_ascii string)) in ();
        simplifiedString := (java_string_replace !simplifiedString (Obj.repr (commonSeps#sPACE)) (Obj.repr (commonSeps#uNDERSCORE)));
        simplifiedString := (java_string_replace !simplifiedString (Obj.repr (commonSeps#dASH)) (Obj.repr (commonSeps#uNDERSCORE)));
        !simplifiedString
        end

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        ()
      end
  end
let () = java_register_constructor "FileUnamedUtil" (fun arguments -> Obj.repr (new fileUnamedUtil (Obj.obj arguments)))

let instance = (new fileUnamedUtil ())
let get_instance () = instance
let () = java_register_static "FileUnamedUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileUnamedUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


