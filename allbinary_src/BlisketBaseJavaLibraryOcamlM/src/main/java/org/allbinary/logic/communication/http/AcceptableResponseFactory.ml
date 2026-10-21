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
(* package org.allbinary.logic.communication.http *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class acceptableResponseFactory () =
  object
    val mutable hTML : AcceptableResponse.acceptableResponse = (Obj.magic 0)
    method hTML = hTML
    method set_hTML value' = hTML <- value'
    val mutable wML : AcceptableResponse.acceptableResponse = (Obj.magic 0)
    method wML = wML
    method set_wML value' = wML <- value'
    val mutable vXML : AcceptableResponse.acceptableResponse = (Obj.magic 0)
    method vXML = vXML
    method set_vXML value' = vXML <- value'

    initializer
      begin
        hTML <- ((new AcceptableResponse.acceptableResponse ("text/html", "html", 0)) :> AcceptableResponse.acceptableResponse);
        wML <- ((new AcceptableResponse.acceptableResponse ("text/wml", "wml", 1)) :> AcceptableResponse.acceptableResponse);
        vXML <- ((new AcceptableResponse.acceptableResponse ("text/vxml", "vxml", 2)) :> AcceptableResponse.acceptableResponse);
        ()
      end
  end
let () = java_register_constructor "AcceptableResponseFactory" (fun arguments -> Obj.repr (new acceptableResponseFactory (Obj.obj arguments)))

let instance = (new acceptableResponseFactory ())
let get_instance () = instance
let () = java_register_static "AcceptableResponseFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AcceptableResponseFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


