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
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

let cLASSNAME : string = "admin.taghelpers.PermissionItemsRequestHelper"
let get_cLASSNAME () = cLASSNAME
let () = java_register_static "PermissionItemsRequestHelperFactory.get_cLASSNAME" (fun _ -> Obj.repr (get_cLASSNAME ()))
let fACTORYNAME : string = "PermissionItemsRequestHelperFactory"
let get_fACTORYNAME () = fACTORYNAME
let () = java_register_static "PermissionItemsRequestHelperFactory.get_fACTORYNAME" (fun _ -> Obj.repr (get_fACTORYNAME ()))
class permissionItemsRequestHelperFactory () =
  object
    
    

    method getInstance : 'any2. java_hash_map * 'any2 -> Obj.t = fun ((hashMap : java_hash_map), pageContext) ->
        let pageContext = Obj.repr pageContext in
        begin
        (Obj.repr ((HelperFactory.getInstance (fACTORYNAME, cLASSNAME, hashMap, (Obj.magic pageContext)))))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PermissionItemsRequestHelperFactory" (fun arguments -> Obj.repr (new permissionItemsRequestHelperFactory (Obj.obj arguments)))


