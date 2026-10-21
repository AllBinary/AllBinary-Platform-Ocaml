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
(* package org.allbinary.business.installer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.init.db.DatabaseConnectionInfoInterface *)
(* import org.allbinary.business.init.db.InitDbHelperFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class dynamicInitDb ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface)) =
  object (self)
    inherit InitDb.initDb ()
    
    

    initializer
      begin
        ();
        ignore (self#setHelper ((InitDbHelperFactory.getInstance (abeClientInformation))))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "DynamicInitDb" (fun arguments -> Obj.repr (new dynamicInitDb (Obj.obj arguments)))


