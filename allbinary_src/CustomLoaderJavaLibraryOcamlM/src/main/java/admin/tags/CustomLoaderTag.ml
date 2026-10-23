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
(* import java.util.HashMap *)
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.CustomLoaderHelperFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.CustomTagSupport *)

class customLoaderTag () =
  object (self)
    inherit CustomTagSupport.customTagSupport ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    val mutable webappPath : string = ""
    method webappPath = webappPath
    method set_webappPath value' = webappPath <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    
    

    method setCommand ((command_arg : string)) : unit =
        begin
        command <- command_arg
        end [@@warning "-7"]
    

    method setWebappPath ((value : string)) : unit =
        begin
        webappPath <- value
        end [@@warning "-7"]
    

    method setCustomLoaderWebappPath () : unit =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new CustomLoaderHelperFactory.customLoaderHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let methodParams : string array ref = ref ([| (java_get_class (Obj.repr webappPath)) |]) in ();
            let methodArgs : Obj.t array ref = ref ([| webappPath |]) in ();
            let setMethod : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("setWebappPath", !methodParams)))) in ();
            ignore ((Obj.magic !setMethod)#invoke (!anyType, !methodArgs))
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, tagStrings#dO_START_TAG))
            end;
            if (command <> (Obj.magic 0)) then begin
                propertiesHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
                if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#sET)) == 0) then begin
                    (self#setCustomLoaderWebappPath ())
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        command <- "";
        webappPath <- "";
        propertiesHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomLoaderTag" (fun arguments -> Obj.repr (new customLoaderTag (Obj.obj arguments)))


