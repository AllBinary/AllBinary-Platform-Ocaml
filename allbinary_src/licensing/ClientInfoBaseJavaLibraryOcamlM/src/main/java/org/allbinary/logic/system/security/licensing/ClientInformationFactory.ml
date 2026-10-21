(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class clientInformationFactory () =
  object (self)
    

    method getInstance () : ClientInformation.clientInformation =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#putF (!commonStrings#nOT_IMPLEMENTED, self, !commonStrings#gET_INSTANCE));
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ((new ClientInformation.clientInformation (!stringUtil#nULL_STRING, !stringUtil#nULL_STRING, !stringUtil#nULL_STRING, !stringUtil#nULL_STRING)) :> ClientInformation.clientInformation)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ClientInformationFactory" (fun arguments -> Obj.repr (new clientInformationFactory (Obj.obj arguments)))


