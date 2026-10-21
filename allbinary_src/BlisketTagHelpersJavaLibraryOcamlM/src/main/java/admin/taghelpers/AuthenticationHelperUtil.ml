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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.role.BasicUserRole *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.file.upload.HttpFilePermissions *)
(* import org.allbinary.logic.communication.http.request.HttpRequestUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)

class authenticationHelperUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method isAuthorized : 'any1. 'any1 * string -> bool = fun (authenticationHelper, (filePath : string)) ->
        let authenticationHelper = Obj.repr authenticationHelper in
        try
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((CommonLabels.getInstance ())#sTART)) ^ filePath), self, "isAuthorized()"))
        end;
        let endIndex : int ref = ref (((HttpRequestUtil.getInstance ())#getLastSeparatorIndex (filePath))) in ();
        let fullPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ (String.sub filePath (0) ((!endIndex) - (0)))), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        let downloadFilePermissions : HttpFilePermissions.httpFilePermissions ref = ref (((new HttpFilePermissions.httpFilePermissions (!fullPath)) :> HttpFilePermissions.httpFilePermissions)) in ();
        let userRoles : BasicArrayList.basicArrayList ref = ref (((!downloadFilePermissions#getUserRoles ()) :> BasicArrayList.basicArrayList)) in ();
        let userRole : UserRole.userRole ref = ref ((((Obj.magic authenticationHelper)#getRole ()) :> UserRole.userRole)) in ();
        let basicUserRole : BasicUserRole.basicUserRole ref = ref (((!userRole#getBasicUserRole ()) :> BasicUserRole.basicUserRole)) in ();
        if (!userRoles#contains (!basicUserRole)) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("Authorized", self, "isAuthorized()"))
            end;
            raise (Java_return (Obj.repr (true)))
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Not Authorized: " ^ (java_string_of (Obj.repr !basicUserRole))), self, "isAuthorized()"))
            end;
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AuthenticationHelperUtil" (fun arguments -> Obj.repr (new authenticationHelperUtil (Obj.obj arguments)))

let instance = (new authenticationHelperUtil ())
let get_instance () = instance
let () = java_register_static "AuthenticationHelperUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AuthenticationHelperUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


