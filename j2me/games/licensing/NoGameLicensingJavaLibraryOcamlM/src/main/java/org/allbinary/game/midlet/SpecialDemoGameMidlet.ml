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
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.system.security.licensing.ClientInformationFactory *)
(* import org.allbinary.logic.system.security.licensing.LicenseServerInitFileUtil *)

class specialDemoGameMidlet ((clientInformationFactory : ClientInformationFactory.clientInformationFactory), _licenseLoadingType, (_demoSetupFactory : LicensedDemoSetupFactory.licensedDemoSetupFactory), _licenseCheckRunnableFactory) =
  object
    inherit DemoGameMidlet.demoGameMidlet (clientInformationFactory)
    
    

    method initView () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method preInit () : unit =
        begin
        ignore ((Obj.obj (java_new "LicenseServerInitFileUtil" (Obj.repr ())))#init ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SpecialDemoGameMidlet" (fun arguments -> Obj.repr (new specialDemoGameMidlet (Obj.obj arguments)))


