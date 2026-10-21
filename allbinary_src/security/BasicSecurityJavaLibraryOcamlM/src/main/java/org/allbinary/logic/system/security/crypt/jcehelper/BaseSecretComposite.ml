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
(* package org.allbinary.logic.system.security.crypt.jcehelper *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)

class baseSecretComposite () =
  object
    

    method encrypt ((_array : int array)) : int array =
        begin
        (NullUtil.getInstance ())#nULL_BYTE_ARRAY
        end
    

    method decrypt ((_array : int array)) : int array =
        begin
        (NullUtil.getInstance ())#nULL_BYTE_ARRAY
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BaseSecretComposite" (fun arguments -> Obj.repr (new baseSecretComposite (Obj.obj arguments)))

let nULL_SECRET_COMPOSITE = (new baseSecretComposite ())
let get_nULL_SECRET_COMPOSITE () = nULL_SECRET_COMPOSITE
let () = java_register_static "BaseSecretComposite.get_nULL_SECRET_COMPOSITE" (fun _ -> Obj.repr (get_nULL_SECRET_COMPOSITE ()))


