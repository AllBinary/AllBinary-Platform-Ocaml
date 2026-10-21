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
(* package org.allbinary.business.init.db *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.system.loader.AbeFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

let cLASSNAME : string = "org.allbinary.business.installer.InitDbCrypted"
let get_cLASSNAME () = cLASSNAME
let () = java_register_static "InitDbHelperFactory.get_cLASSNAME" (fun _ -> Obj.repr (get_cLASSNAME ()))

let getInstance : 'any1 'any2. 'any1 * 'any2 -> Obj.t = fun (abeClientInformation, databaseConnectionInfoInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let databaseConnectionInfoInterface = Obj.repr databaseConnectionInfoInterface in
        begin
        let params : Obj.t array ref = ref ((Array.make (1) (Obj.magic 0))) in ();
        let classes : string array ref = ref ((Array.make (1) (Obj.magic 0))) in ();
        !classes.(0) <- "DatabaseConnectionInfoInterface";
        !params.(0) <- (Obj.repr ((Obj.magic (Obj.magic databaseConnectionInfoInterface))));
        let anyType : Obj.t ref = ref ((Obj.repr ((AbeFactory.getInstance ())#getInstance ((Obj.magic abeClientInformation), cLASSNAME, !classes, !params)))) in ();
        (Obj.repr (!anyType))
        end [@@warning "-20"]

(* Java overload getInstance(AbeClientInformationInterface) is not converted: OCaml has one method per name *)

let () = java_register_static "InitDbHelperFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class initDbHelperFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InitDbHelperFactory" (fun arguments -> Obj.repr (new initDbHelperFactory (Obj.obj arguments)))


