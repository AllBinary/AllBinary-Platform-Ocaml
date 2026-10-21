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
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class thirdPartyStore ((name_arg : string)) =
  object
    val mutable authorized : bool = false
    method authorized = authorized
    method set_authorized value' = authorized <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method authorize : 'any1. 'any1 -> unit = fun (_clientInformationInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isAuthorized () : bool =
        begin
        authorized
        end
    

    method setAuthorized ((authorized_arg : bool)) : unit =
        begin
        authorized <- authorized_arg
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        authorized <- false;
        ();
        ();
        name <- name_arg
      end
  end
let () = java_register_constructor "ThirdPartyStore" (fun arguments -> Obj.repr (new thirdPartyStore (Obj.obj arguments)))


