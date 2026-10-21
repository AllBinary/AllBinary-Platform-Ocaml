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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class noThirdPartyStore () =
  object (self)
    inherit ThirdPartyStore.thirdPartyStore ((StringUtil.getInstance ())#eMPTY_STRING)
    
    

    method authorize : 'any1. 'any1 -> unit = fun (_clientInformationInterface) ->
        begin
        ignore (self#setAuthorized (true))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NoThirdPartyStore" (fun arguments -> Obj.repr (new noThirdPartyStore (Obj.obj arguments)))


