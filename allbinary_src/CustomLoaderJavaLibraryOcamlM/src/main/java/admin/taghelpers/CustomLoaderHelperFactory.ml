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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

let cLASSNAME : string = "admin.taghelpers.CustomLoaderHelper"
let get_cLASSNAME () = cLASSNAME
let () = java_register_static "CustomLoaderHelperFactory.get_cLASSNAME" (fun _ -> Obj.repr (get_cLASSNAME ()))
let fACTORYNAME : string = "CustomLoaderHelperFactory"
let get_fACTORYNAME () = fACTORYNAME
let () = java_register_static "CustomLoaderHelperFactory.get_fACTORYNAME" (fun _ -> Obj.repr (get_fACTORYNAME ()))
class customLoaderHelperFactory () =
  object
    
    

    method getInstance : 'any2. java_hash_map * 'any2 -> Obj.t = fun ((hashMap : java_hash_map), pageContext) ->
        let pageContext = Obj.repr pageContext in
        begin
        let abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface ref = ref (((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface)) in ();
        (Obj.repr ((HelperFactory.getInstance (!abeClientInformation, fACTORYNAME, cLASSNAME, hashMap, (Obj.magic pageContext)))))
        end [@@warning "-20"]
    

    (* Java overload getInstance(AbeClientInformationInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CustomLoaderHelperFactory" (fun arguments -> Obj.repr (new customLoaderHelperFactory (Obj.obj arguments)))


