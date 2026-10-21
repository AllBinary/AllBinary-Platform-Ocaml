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
(* package admin.tags *)

open Allbinary_java [@@warning "-33"]
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.UserHelperFactory *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.role.UserRoleData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)

class userTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable role : string = ""
    method role = role
    method set_role value' = role <- value'
    val mutable enable : string = ""
    method enable = enable
    method set_enable value' = enable <- value'
    
    

    method setRole ((value : string)) : unit =
        begin
        role <- value;
        ignore ((self#getPropertiesHashMap ())#put ((UserRoleData.get_nAME ()), role))
        end [@@warning "-7"]
    

    method setEnable ((value : string)) : unit =
        begin
        enable <- value;
        ignore ((self#getPropertiesHashMap ())#put ((EntryData.getInstance ())#eNABLE, enable))
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if (self#isEnabled ()) then begin
                raise (Java_return (Obj.repr ((super#doStartTag ()))))
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        role <- "";
        enable <- "";
        ();
        ignore (self#setTagHelperFactory ((new UserHelperFactory.userHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new UserHelperFactory.userHelperFactory ())))
      end
  end
let () = java_register_constructor "UserTag" (fun arguments -> Obj.repr (new userTag (Obj.obj arguments)))


