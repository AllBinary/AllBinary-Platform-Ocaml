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
(* package org.allbinary.thirdparty.store *)

open Allbinary_java [@@warning "-33"]

class thirdPartyMessageFactory () =
  object
    val mutable aUTHORIZED : string = ""
    method aUTHORIZED = aUTHORIZED
    method set_aUTHORIZED value' = aUTHORIZED <- value'
    val mutable nOT_AUTHORIZED : string = ""
    method nOT_AUTHORIZED = nOT_AUTHORIZED
    method set_nOT_AUTHORIZED value' = nOT_AUTHORIZED <- value'
    val mutable lINKAGE_ERROR : string = ""
    method lINKAGE_ERROR = lINKAGE_ERROR
    method set_lINKAGE_ERROR value' = lINKAGE_ERROR <- value'

    initializer
      begin
        aUTHORIZED <- "Authorized";
        nOT_AUTHORIZED <- "Not Authorized";
        lINKAGE_ERROR <- "Linkage Error";
        ()
      end
  end
let () = java_register_constructor "ThirdPartyMessageFactory" (fun arguments -> Obj.repr (new thirdPartyMessageFactory (Obj.obj arguments)))

let instance = (new thirdPartyMessageFactory ())
let get_instance () = instance
let () = java_register_static "ThirdPartyMessageFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ThirdPartyMessageFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


