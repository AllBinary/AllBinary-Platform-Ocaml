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
(* package org.allbinary.logic.system.loader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)

let classLoader : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_classLoader () = !classLoader
let set_classLoader value' = classLoader := value'
let () = java_register_static "WebappClassLoaderInfo.get_classLoader" (fun _ -> Obj.repr (get_classLoader ()))

let setLoader : 'any1. 'any1 -> unit = fun (classLoader_arg) ->
        let classLoader_arg = Obj.repr classLoader_arg in
        begin
        classLoader := (Obj.magic classLoader_arg)
        end [@@warning "-20"]

and getLoader : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !classLoader)))
        end

let () = java_register_static "WebappClassLoaderInfo.setLoader" (fun arguments -> Obj.repr (setLoader (Obj.obj arguments)))
let () = java_register_static "WebappClassLoaderInfo.getLoader" (fun arguments -> Obj.repr (getLoader (Obj.obj arguments)))
class webappClassLoaderInfo () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "WebappClassLoaderInfo" (fun arguments -> Obj.repr (new webappClassLoaderInfo (Obj.obj arguments)))


