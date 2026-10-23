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
(* import javax.servlet.jsp.tagext.Tag *)
(* import admin.taghelpers.InventoryHelperFactory *)
(* import admin.taghelpers.InventoryRequestHelperFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)

class inventoryTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    
    

    method setStoreName ((value : string)) : unit =
        begin
        storeName <- value
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if (self#isEnabled ()) then begin
                if ((self#getCommand ()) != (Obj.magic 0)) then begin
                    if ((((((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#bACKUP)) != 0) && (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#rESTORE)) != 0)) && (((self#getCommand ())#compareTo ((self#commonStrings)#cREATE)) != 0)) && (((self#getCommand ())#compareTo ((self#commonStrings)#dROP)) != 0)) then begin
                        let parentTag : Obj.t ref = ref ((Obj.repr (self#getParent ()))) in ();
                        ignore ((ParentInventoryTagHelper.getInstance ())#isValid (self, (Obj.magic !parentTag)));
                        ignore ((self#getPropertiesHashMap ())#put ((AbTagData.get_pARENT ()), (Obj.magic !parentTag)));
                        ignore ((self#getPropertiesHashMap ())#put ((StoreFrontData.getInstance ())#nAME, storeName))
                    end;
                    raise (Java_return (Obj.repr ((super#doStartTag ()))))
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        storeName <- "";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTagHelperFactory ((new InventoryHelperFactory.inventoryHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new InventoryRequestHelperFactory.inventoryRequestHelperFactory ())))
      end
  end
let () = java_register_constructor "InventoryTag" (fun arguments -> Obj.repr (new inventoryTag (Obj.obj arguments)))


