(* Generated Code Do Not Modify *)
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class virtual constants =
  object
  end

let bUNDLE_SYMBOLICNAME : string = (StringUtil.getInstance ())#eMPTY_STRING
let get_bUNDLE_SYMBOLICNAME () = bUNDLE_SYMBOLICNAME
let () = java_register_static "Constants.get_bUNDLE_SYMBOLICNAME" (fun _ -> Obj.repr (get_bUNDLE_SYMBOLICNAME ()))


