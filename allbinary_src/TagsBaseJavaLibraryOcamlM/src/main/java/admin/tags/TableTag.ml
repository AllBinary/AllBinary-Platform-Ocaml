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
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.TagHelperFactoryInterface *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.SqlStrings *)
(* import org.allbinary.logic.java.bool.BooleanUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.PropertiesTag *)

class tableTag () =
  object (self)
    inherit PropertiesTag.propertiesTag ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable enabled : string = ""
    method enabled = enabled
    method set_enabled value' = enabled <- value'
    val mutable tagHelperFactoryInterface : Obj.t = Obj.repr 0
    method tagHelperFactoryInterface : 'r. 'r = Obj.magic tagHelperFactoryInterface
    method set_tagHelperFactoryInterface : 'v. 'v -> unit = fun value' -> tagHelperFactoryInterface <- Obj.repr value'
    val mutable tagRequestHelperFactoryInterface : Obj.t = Obj.repr 0
    method tagRequestHelperFactoryInterface : 'r. 'r = Obj.magic tagRequestHelperFactoryInterface
    method set_tagRequestHelperFactoryInterface : 'v. 'v -> unit = fun value' -> tagRequestHelperFactoryInterface <- Obj.repr value'
    val mutable requestObject : Obj.t = (Obj.magic 0)
    method requestObject = requestObject
    method set_requestObject value' = requestObject <- value'
    val mutable current : int = (Obj.magic 0)
    method current = current
    method set_current value' = current <- value'
    val mutable total : int = (Obj.magic 0)
    method total = total
    method set_total value' = total <- value'
    
    

    method setIsSelected ((enabled_arg : string)) : unit =
        begin
        enabled <- enabled_arg
        end [@@warning "-7"]
    

    method isEnabled () : bool =
        try
        begin
        if (not ((StringValidationUtil.getInstance ())#isEmpty (enabled))) then begin
            if (((BooleanUtil.getInstance ())#getFromString (enabled)) || ((String.compare enabled ("on")) == 0)) then begin
                raise (Java_return (Obj.repr (true)))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setTagHelperFactory : 'any1. 'any1 -> unit = fun (tagHelperFactoryInterface_arg) ->
        let tagHelperFactoryInterface_arg = Obj.repr tagHelperFactoryInterface_arg in
        begin
        tagHelperFactoryInterface <- Obj.repr ((Obj.magic tagHelperFactoryInterface_arg))
        end [@@warning "-7-20"]
    

    method getTagHelperFactoryInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic tagHelperFactoryInterface)))
        end [@@warning "-7"]
    

    method setTagRequestHelperFactory : 'any1. 'any1 -> unit = fun (tagHelperFactoryInterface_arg) ->
        let tagHelperFactoryInterface_arg = Obj.repr tagHelperFactoryInterface_arg in
        begin
        tagRequestHelperFactoryInterface <- Obj.repr ((Obj.magic tagHelperFactoryInterface_arg))
        end [@@warning "-7-20"]
    

    method getTagRequestHelperFactoryInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic tagRequestHelperFactoryInterface)))
        end [@@warning "-7"]
    

    method setCurrent ((current_arg : int)) : unit =
        begin
        current <- current_arg
        end [@@warning "-7"]
    

    method getCurrent () : int =
        begin
        current
        end [@@warning "-7"]
    

    method setTotal ((total_arg : int)) : unit =
        begin
        total <- total_arg
        end [@@warning "-7"]
    

    method getTotal () : int =
        begin
        total
        end [@@warning "-7"]
    

    method drop () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getTagHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("drop", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to drop table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getTagHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("create", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to create table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "create()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method restore () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getTagHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("restore", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to restore backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "restore()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method backup () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getTagHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("backup", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to make backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backup()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr requestObject))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("insert", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (requestObject, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to insert") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "insert()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr requestObject))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod (commonStrings#delete, (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (requestObject, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to delete") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let helperClass : string ref = ref ((java_get_class (Obj.repr requestObject))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("update", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (requestObject, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            let error : string ref = ref ("Failed to update") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                let request : Obj.t ref = ref ((Obj.repr (Obj.magic (pageContext#getRequest ())))) in ();
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("TableTag Helper: "));
                ignore (!stringBuffer#append ((java_get_class (Obj.repr (self#getTagHelperFactoryInterface ())))));
                ignore (!stringBuffer#append (" Request URI: "));
                ignore (!stringBuffer#append (((Obj.magic !request)#getRequestURI ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, tagStrings#dO_START_TAG))
            end;
            if ((self#getTagRequestHelperFactoryInterface ()) != (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                    ignore ((Obj.magic logUtil)#putF (("TableTag RequestHelper: " ^ (java_get_class (Obj.repr (self#getTagRequestHelperFactoryInterface ())))), self, tagStrings#dO_START_TAG))
                end
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                    ignore ((Obj.magic logUtil)#putF ("TableTag RequestHelper: null", self, tagStrings#dO_START_TAG))
                end
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF (("TableTag this.getCommand(): " ^ java_string_of (Obj.repr ((self#getCommand ())))), self, tagStrings#dO_START_TAG))
            end;
            if (self#isEnabled ()) then begin
                if ((self#getCommand ()) != (Obj.magic 0)) then begin
                    if (((((((self#getCommand ())#compareTo (commonStrings#iNSERT)) == 0) || (((self#getCommand ())#compareTo ((SqlStrings.getInstance ())#iNSERT_INTO)) == 0)) || (((self#getCommand ())#compareTo (commonStrings#dELETE)) == 0)) || (((self#getCommand ())#compareTo (commonStrings#uPDATE)) == 0)) || (((self#getCommand ())#compareTo ((SqlStrings.getInstance ())#uPDATE)) == 0)) then begin
                        requestObject <- ((self#getTagRequestHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext))
                    end;
                    if ((((self#getCommand ())#compareTo (commonStrings#iNSERT)) == 0) || (((self#getCommand ())#compareTo ((SqlStrings.getInstance ())#iNSERT_INTO)) == 0)) then begin
                        ignore (self#insert ())
                    end else if (((self#getCommand ())#compareTo (commonStrings#dELETE)) == 0) then begin
                        ignore (self#delete ())
                    end else if ((((self#getCommand ())#compareTo (commonStrings#uPDATE)) == 0) || (((self#getCommand ())#compareTo ((SqlStrings.getInstance ())#uPDATE)) == 0)) then begin
                        ignore (self#update ())
                    end;
                    if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#bACKUP)) == 0) then begin
                        let output : string ref = ref ((self#backup ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end;
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#rESTORE)) == 0) then begin
                        ignore ((self#getPropertiesHashMap ())#put ("current", (self#getCurrent ())));
                        ignore ((self#getPropertiesHashMap ())#put ("total", (self#getTotal ())));
                        let output : string ref = ref ((self#restore ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end;
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end else if (((self#getCommand ())#compareTo (commonStrings#dROP)) == 0) then begin
                        let output : string ref = ref ((self#drop ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end;
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end else if (((self#getCommand ())#compareTo (commonStrings#cREATE)) == 0) then begin
                        let output : string ref = ref ((self#create ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end;
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end else if (((self#getCommand ())#compareTo (commonStrings#iNSERT)) == 0) then begin
                        let output : string ref = ref ((self#insert ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end
                    end else if (((self#getCommand ())#compareTo (commonStrings#dELETE)) == 0) then begin
                        let output : string ref = ref ((self#delete ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end
                    end else if (((self#getCommand ())#compareTo (commonStrings#uPDATE)) == 0) then begin
                        let output : string ref = ref ((self#update ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end
                    end
                end
            end;
            eVAL_BODY_INCLUDE
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        enabled <- "";
        tagHelperFactoryInterface <- (Obj.repr (Obj.magic 0));
        tagRequestHelperFactoryInterface <- (Obj.repr (Obj.magic 0));
        requestObject <- (Obj.repr (Obj.magic 0));
        current <- (Obj.magic 0);
        total <- (Obj.magic 0);
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "TableTag" (fun arguments -> Obj.repr (new tableTag (Obj.obj arguments)))


