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
(* import org.allbinary.business.user.NewUserFactory *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.HttpContextView *)

class addValidationUserView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpContextView.httpContextView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable user : UserInterface.userInterface = (Obj.magic 0)
    method user = user
    method set_user value' = user <- value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            if (((UserEntityFactory.getInstance ())#getUser ((user#getUserName ()))) != (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("User already in existance.", self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            if ((Obj.repr (user#isValid ())) == (Obj.repr false)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if (((UserEntityFactory.getInstance ())#getUser ((user#getUserName ()))) != (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("User already exists", self, "validationInfo()"))
                end;
                ignore (!stringBuffer#append ("The User Name you selected is already in use.<br/>  Please select another User Name.<br />"))
            end;
            if ((Obj.repr (user#isValid ())) == (Obj.repr false)) then begin
                ignore (!stringBuffer#append ((user#validationInfo ())))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Getting Validation Info"
        end)
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]
    

    method view () : string =
        begin
        ((views#validationOnlyTempUtil#getInstance ())#view (self))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        user <- (NewUserFactory.getInstance (transformInfoInterface))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AddValidationUserView" (fun arguments -> Obj.repr (new addValidationUserView (Obj.obj arguments)))


