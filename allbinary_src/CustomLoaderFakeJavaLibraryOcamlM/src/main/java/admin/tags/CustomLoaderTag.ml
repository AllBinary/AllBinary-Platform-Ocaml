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
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.globals.AppUrlGlobals *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.globals.URLGLOBALS *)
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
            let urlGlobals : AppUrlGlobals.appUrlGlobals ref = ref (((new AppUrlGlobals.appUrlGlobals ()) :> AppUrlGlobals.appUrlGlobals)) in ();
            ignore (!urlGlobals#setWebappPath (webappPath));
            ignore (URLGLOBALS.init (!urlGlobals))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "setCustomLoaderWebappPath()", e))
            end
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, tagStrings#dO_START_TAG))
            end;
            if (command <> (Obj.magic 0)) then begin
                if ((String.compare command ((GLOBALS2.get_sET ()))) == 0) then begin
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
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomLoaderTag" (fun arguments -> Obj.repr (new customLoaderTag (Obj.obj arguments)))


