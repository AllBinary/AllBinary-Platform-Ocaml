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
(* package views.admin.user *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.username.UserName *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class editValidationUserView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit UserView.userView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            if ((Obj.repr ((UserName.getInstance ())#isValid (userName))) == (Obj.repr true)) then begin
                (self#set_user) (((UserEntityFactory.getInstance ())#getUser (userName)));
                if ((self#user) == (Obj.magic 0)) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end else begin
                raise (Java_return (Obj.repr (false)))
            end;
            ((self#user)#isValid ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, (self#commonStrings)#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        try
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if ((Obj.repr ((UserName.getInstance ())#isValid (userName))) == (Obj.repr true)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("User Name is valid", self, "validationInfo()"))
                end;
                (self#set_user) (((UserEntityFactory.getInstance ())#getUser (userName)));
                if ((self#user) == (Obj.magic 0)) then begin
                    ignore (!stringBuffer#append ("User does not exist.<br />"));
                    raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
                end
            end else begin
                ignore (!stringBuffer#append ("User Name is not valid.<br />"));
                raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
            end;
            if ((Obj.repr ((self#user)#isValid ())) == (Obj.repr false)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("User exists but is invalid - Probably manually modified", self, "validationInfo()"))
                end;
                ignore (!stringBuffer#append ("User data is not valid - Please call administrator.<br />"));
                ignore (!stringBuffer#append (((self#user)#validationInfo ())))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let httpServletRequest : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getPageContext ())#getRequest ())))) in ();
        let hashMap : java_hash_map ref = ref ((((new RequestParams.requestParams ((Obj.magic !httpServletRequest)))#toHashMap ()) :> java_hash_map)) in ();
        userName <- ((new UserName.userName (!hashMap))#get ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "EditValidationUserView" (fun arguments -> Obj.repr (new editValidationUserView (Obj.obj arguments)))


