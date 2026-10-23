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
(* package views.admin.storefront *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.context.modules.storefront.StoreFront *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.HttpContextView *)

class addValidationStoreFrontView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpContextView.httpContextView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable newStoreFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method newStoreFrontInterface = newStoreFrontInterface
    method set_newStoreFrontInterface value' = newStoreFrontInterface <- value'
    
    

    method isValid () : bool =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            if ((Obj.repr (newStoreFrontInterface#isValid ())) == (Obj.repr false)) then begin
                valid := false
            end;
            if ((StoreFrontFactory.getInstance ((newStoreFrontInterface#getName ()))) != (Obj.magic 0)) then begin
                valid := false
            end;
            if ((Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr ((new AbPath.abPath ((self#getStoreViewsPath ()), (StringUtil.getInstance ())#eMPTY_STRING))))))#isFile ()) then begin
                valid := false
            end;
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, (self#commonStrings)#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method getStoreViewsPath () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getMainPath ())));
        ignore (!stringBuffer#append ((FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH));
        ignore (!stringBuffer#append ((newStoreFrontInterface#getName ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if ((Obj.repr (newStoreFrontInterface#isValid ())) == (Obj.repr false)) then begin
                ignore (!stringBuffer#append ((newStoreFrontInterface#validationInfo ())))
            end;
            if ((StoreFrontFactory.getInstance ((newStoreFrontInterface#getName ()))) != (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("Store name already used<br/>"))
            end;
            if ((Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr ((new AbPath.abPath ((self#getStoreViewsPath ()), (StringUtil.getInstance ())#eMPTY_STRING))))))#isFile ()) then begin
                ignore (!stringBuffer#append ("Store name clashes with template name<br/>"))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
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
        newStoreFrontInterface <- (Obj.magic (new StoreFront.storeFront ((Obj.magic ((self#getPageContext ())#getRequest ())))));
        if ((newStoreFrontInterface#getName ()) = (Obj.magic 0)) then begin
            ignore (newStoreFrontInterface#setName (((self#getWeblisketSession ())#getStoreName ())))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "AddValidationStoreFrontView" (fun arguments -> Obj.repr (new addValidationStoreFrontView (Obj.obj arguments)))


