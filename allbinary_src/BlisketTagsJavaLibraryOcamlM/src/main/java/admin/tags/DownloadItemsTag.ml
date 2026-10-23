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
(* import admin.taghelpers.DownloadItemsHelperFactory *)
(* import admin.taghelpers.DownloadItemsRequestHelperFactory *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)

class downloadItemsTag () =
  object (self)
    inherit TableTag.tableTag () as super
    
    

    method doStartTag () : int =
        try
        begin
        (try
            if (self#isEnabled ()) then begin
                if ((self#getCommand ()) != (Obj.magic 0)) then begin
                    if ((((((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#bACKUP)) != 0) && (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#rESTORE)) != 0)) && (((self#getCommand ())#compareTo ((self#commonStrings)#cREATE)) != 0)) && (((self#getCommand ())#compareTo ((self#commonStrings)#dROP)) != 0)) then begin
                        let parentTag : Obj.t ref = ref ((Obj.repr (self#getParent ()))) in ();
                        ignore ((ParentInventoryTagHelper.getInstance ())#isValid (self, (Obj.magic !parentTag)));
                        ignore ((self#getPropertiesHashMap ())#put ((AbTagData.get_pARENT ()), (Obj.magic !parentTag)))
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
        ();
        ignore (self#setTagHelperFactory ((new DownloadItemsHelperFactory.downloadItemsHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new DownloadItemsRequestHelperFactory.downloadItemsRequestHelperFactory ())))
      end
  end
let () = java_register_constructor "DownloadItemsTag" (fun arguments -> Obj.repr (new downloadItemsTag (Obj.obj arguments)))


