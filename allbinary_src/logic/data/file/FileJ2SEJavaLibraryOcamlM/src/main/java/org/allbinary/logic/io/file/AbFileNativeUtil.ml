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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)


let get : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        (Obj.magic (((Obj.magic file)#getFile ())))
        end [@@warning "-20"]

let () = java_register_static "AbFileNativeUtil.get" (fun arguments -> Obj.repr (get (Obj.obj arguments)))
class abFileNativeUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AbFileNativeUtil" (fun arguments -> Obj.repr (new abFileNativeUtil (Obj.obj arguments)))


