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
(* package tags.admin *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.business.user.role.UserRoleData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import tags.StoreValidationTransformTag *)

class usersTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    val mutable role : string = ""
    method role = role
    method set_role value' = role <- value'
    
    

    method setRole ((value : string)) : unit =
        begin
        role <- value
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            ignore (self#setName ("Admin Users View"));
            ignore (self#setObjectFile ("views.admin.user.UsersValidationView"));
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                ignore ((self#getPropertiesHashMap ())#put ((UserRoleData.get_nAME ()), role));
                if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#vIEW)) == 0) then begin
                    ()
                end else begin
                    raise (Failure (("No Such View Command: " ^ java_string_of (Obj.repr ((self#getCommand ()))))))
                end;
                raise (Java_return (Obj.repr ((super#doStartTag ()))))
            end;
            raise (Failure ("Command Null"))
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        role <- "";
        ();
        ()
      end
  end
let () = java_register_constructor "UsersTag" (fun arguments -> Obj.repr (new usersTag (Obj.obj arguments)))


