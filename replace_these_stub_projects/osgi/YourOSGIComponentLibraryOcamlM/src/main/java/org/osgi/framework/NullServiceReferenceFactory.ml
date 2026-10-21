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
(* package org.osgi.framework *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class nullServiceReferenceFactory () =
  object
    val mutable nULL_SERVICE_REFERENCE : NullServiceReference.nullServiceReference = (Obj.magic 0)
    method nULL_SERVICE_REFERENCE = nULL_SERVICE_REFERENCE
    method set_nULL_SERVICE_REFERENCE value' = nULL_SERVICE_REFERENCE <- value'

    initializer
      begin
        nULL_SERVICE_REFERENCE <- ((new NullServiceReference.nullServiceReference ()) :> NullServiceReference.nullServiceReference);
        ()
      end
  end
let () = java_register_constructor "NullServiceReferenceFactory" (fun arguments -> Obj.repr (new nullServiceReferenceFactory (Obj.obj arguments)))

let instance = (new nullServiceReferenceFactory ())
let get_instance () = instance
let () = java_register_static "NullServiceReferenceFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NullServiceReferenceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


