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


let isJ2ME () : bool =
        begin
        false
        end

and isJ2SE () : bool =
        begin
        true
        end

and isHTML () : bool =
        begin
        false
        end

let () = java_register_static "J2MEUtil.isJ2ME" (fun arguments -> Obj.repr (isJ2ME (Obj.obj arguments)))
let () = java_register_static "J2MEUtil.isJ2SE" (fun arguments -> Obj.repr (isJ2SE (Obj.obj arguments)))
let () = java_register_static "J2MEUtil.isHTML" (fun arguments -> Obj.repr (isHTML (Obj.obj arguments)))
class j2MEUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "J2MEUtil" (fun arguments -> Obj.repr (new j2MEUtil (Obj.obj arguments)))


