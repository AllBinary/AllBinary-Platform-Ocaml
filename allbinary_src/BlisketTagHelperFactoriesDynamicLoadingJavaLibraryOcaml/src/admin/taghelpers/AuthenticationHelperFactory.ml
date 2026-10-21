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
(* import javax.servlet.http.HttpServletRequest *)

let cLASSNAME : string = "admin.taghelpers.AuthenticationHelper"
let get_cLASSNAME () = cLASSNAME
let () = java_register_static "AuthenticationHelperFactory.get_cLASSNAME" (fun _ -> Obj.repr (get_cLASSNAME ()))
let fACTORYNAME : string = "AuthenticationHelperFactory"
let get_fACTORYNAME () = fACTORYNAME
let () = java_register_static "AuthenticationHelperFactory.get_fACTORYNAME" (fun _ -> Obj.repr (get_fACTORYNAME ()))
class authenticationHelperFactory () =
  object
    
    

    method getInstance : 'any2. java_hash_map * 'any2 -> Obj.t = fun ((hashMap : java_hash_map), pageContext) ->
        let pageContext = Obj.repr pageContext in
        begin
        (Obj.repr ((HelperFactory.getInstance (fACTORYNAME, cLASSNAME, hashMap, (Obj.magic pageContext)))))
        end [@@warning "-20"]
    

    (* Java overload getInstance(HashMap, HttpServletRequest) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AuthenticationHelperFactory" (fun arguments -> Obj.repr (new authenticationHelperFactory (Obj.obj arguments)))


