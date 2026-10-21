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
(* package org.allbinary.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.midlet.MIDlet *)

class midletFactoryInterface () =
  object
    

    method getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((AllBinaryMidlet.getNullInstance ())))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MidletFactoryInterface" (fun arguments -> Obj.repr (new midletFactoryInterface (Obj.obj arguments)))


