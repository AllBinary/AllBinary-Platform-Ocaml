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
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]


let isAppletLoader : 'any1. 'any1 -> bool = fun (_anyType) ->
        begin
        false
        end

let () = java_register_static "AppletUtil.isAppletLoader" (fun arguments -> Obj.repr (isAppletLoader (Obj.obj arguments)))
class appletUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AppletUtil" (fun arguments -> Obj.repr (new appletUtil (Obj.obj arguments)))


