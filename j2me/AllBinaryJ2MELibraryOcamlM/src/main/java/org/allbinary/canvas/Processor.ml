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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]

class processor () =
  object
    

    method process () : unit =
        begin
        ()
        end
    

    method processt ((_timeDelta : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "Processor" (fun arguments -> Obj.repr (new processor (Obj.obj arguments)))

let sINGLETON = (new processor ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "Processor.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "Processor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


