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
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import tags.StoreValidationTransformTag *)

class dateRangeOrderHistoryTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable status : string = ""
    method status = status
    method set_status value' = status <- value'
    
    

    method setStatus ((value : string)) : unit =
        begin
        status <- value
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF ("Tag Start", self, tagStrings#dO_START_TAG))
            end;
            ignore (self#setName ("Range Order History View"));
            ignore (self#setObjectFile ("views.admin.orderhistory.DateRangeOrderHistoryView"));
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#vIEW)) == 0) then begin
                    ()
                end else begin
                    raise (Failure (("No Such View Command: " ^ java_string_of (Obj.repr ((self#getCommand ()))))))
                end;
                raise (Java_return (Obj.repr ((super#doStartTag ()))))
            end;
            raise (Failure ("Command Null"))
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        status <- "";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "DateRangeOrderHistoryTag" (fun arguments -> Obj.repr (new dateRangeOrderHistoryTag (Obj.obj arguments)))


