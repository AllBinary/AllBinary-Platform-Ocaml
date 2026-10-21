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
(* package org.allbinary.logic.communication.http.file.upload *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.role.BasicUserRoleFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.string.CommonStrings *)

class httpFilePermissions ((fullPath : AbPath.abPath)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable file : Obj.t = Obj.repr 0
    method file : 'r. 'r = Obj.magic file
    method set_file : 'v. 'v -> unit = fun value' -> file <- Obj.repr value'
    val mutable userRoles : BasicArrayList.basicArrayList = (Obj.magic 0)
    method userRoles = userRoles
    method set_userRoles value' = userRoles <- value'
    
    

    method isFile () : bool =
        begin
        ((Obj.magic file)#isFile ())
        end
    

    method getUserRoles () : BasicArrayList.basicArrayList =
        begin
        (userRoles :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        userRoles <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        file <- Obj.repr ((Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr ((new AbPath.abPath ((fullPath#toFileSystemString ()), (FileUploadData.getInstance ())#fILE)))))));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
            ignore ((Obj.magic logUtil)#putF (("Loading Privileges: " ^ java_string_of (Obj.repr ((fullPath#toFileSystemString ())))), self, commonStrings#cONSTRUCTOR))
        end;
        if (self#isFile ()) then begin
            ignore (userRoles#add ((BasicUserRoleFactory.getInstance ())#aDMINISTRATOR))
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
            ignore ((Obj.magic logUtil)#putF (("User Roles: " ^ java_string_of (Obj.repr (userRoles))), self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "HttpFilePermissions" (fun arguments -> Obj.repr (new httpFilePermissions (Obj.obj arguments)))


