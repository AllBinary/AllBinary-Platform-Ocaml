(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.system *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import org.allbinary.data.resource.ResourceUtil *)

class platformAssetManager () =
  object
    

    method getResourceAsStream : 'return. string -> 'return = fun ((resource : string)) ->
        begin
        let resourceUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))))) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !resourceUtil)#getResourceAsStream (resource)))) in ();
        (Obj.magic ((Obj.magic !inputStream)))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PlatformAssetManager" (fun arguments -> Obj.repr (new platformAssetManager (Obj.obj arguments)))

let instance = (new platformAssetManager ())
let get_instance () = instance
let () = java_register_static "PlatformAssetManager.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PlatformAssetManager.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


