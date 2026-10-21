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


let isMemoryRestrictive () : bool =
        begin
        true
        end

and isAndroid () : bool =
        begin
        false
        end

let () = java_register_static "AndroidUtil.isMemoryRestrictive" (fun arguments -> Obj.repr (isMemoryRestrictive (Obj.obj arguments)))
let () = java_register_static "AndroidUtil.isAndroid" (fun arguments -> Obj.repr (isAndroid (Obj.obj arguments)))
class androidUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AndroidUtil" (fun arguments -> Obj.repr (new androidUtil (Obj.obj arguments)))


