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
(* package tags.generic.inventory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import taghelpers.InventoryHelperFactory *)
(* import tags.StoreValidationTransformTag *)

class inventoryTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method search () : unit =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new InventoryHelperFactory.inventoryHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("search", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            ignore ((pageContext#getOut ())#print (!result))
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method viewSummary () : unit =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new InventoryHelperFactory.inventoryHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("viewSummary", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            ignore ((pageContext#getOut ())#print (!result))
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#sEARCH)) == 0) then begin
                    ignore (self#setName ("Basic Search Inventory View"));
                    ignore (self#setObjectFile ("views.generic.inventory.AutoSearchValidationInventoryView"));
                    (self#search ());
                    raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#vIEWSUMMARY)) == 0) then begin
                    ignore (self#setName ("Basic Inventory View"));
                    ignore (self#setObjectFile ("views.generic.inventory.AutoValidationInventoryView"));
                    (self#viewSummary ());
                    raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#vIEW)) == 0) then begin
                    ignore (self#setName ("Basic Inventory View"));
                    ignore (self#setObjectFile ("views.generic.inventory.AutoValidationInventoryView"));
                    raise (Java_return (Obj.repr ((super#doStartTag ()))))
                end else begin
                    raise (Failure (("No Such View Command: " ^ java_string_of (Obj.repr ((self#getCommand ()))))))
                end
            end;
            raise (Failure ("Command Null"))
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventoryTag" (fun arguments -> Obj.repr (new inventoryTag (Obj.obj arguments)))


