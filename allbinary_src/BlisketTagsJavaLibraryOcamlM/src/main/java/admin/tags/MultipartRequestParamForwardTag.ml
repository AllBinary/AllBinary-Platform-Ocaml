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
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.JspTagException *)
(* import javax.servlet.jsp.tagext.Tag *)
(* import admin.taghelpers.MultipartRequestParamForwardHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.CustomTagSupport *)
(* import tags.HelperTag *)

class multipartRequestParamForwardTag () =
  object (self)
    inherit CustomTagSupport.customTagSupport ()
    val mutable page : string = ""
    method page = page
    method set_page value' = page <- value'
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    val mutable paramVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method paramVector = paramVector
    method set_paramVector value' = paramVector <- value'
    

    method setPage ((page_arg : string)) : unit =
        begin
        page <- page_arg
        end [@@warning "-7"]
    

    method setCommand ((command_arg : string)) : unit =
        begin
        command <- command_arg
        end [@@warning "-7"]
    

    method setParamVector : 'any1. 'any1 -> unit = fun (paramVector_arg) ->
        let paramVector_arg = Obj.repr paramVector_arg in
        begin
        paramVector <- (Obj.magic paramVector_arg)
        end [@@warning "-7-20"]
    

    method doStartTag () : int =
        begin
        (try
            let parentTag : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getParent ())))) in ();
            ignore ((ParentInventoryTagHelper.getInstance ())#isValid (self, (Obj.magic !parentTag)));
            let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!hashMap#put ((AbTagData.get_pARENT ()), (Obj.magic !parentTag)));
            let multipartRequestParamForwardHelper : Obj.t ref = ref ((Obj.repr (new MultipartRequestParamForwardHelper.multipartRequestParamForwardHelper ((Obj.magic !parentTag), page, command, paramVector, pageContext)))) in ();
            ignore ((Obj.magic !multipartRequestParamForwardHelper)#forward ());
            (Tag.get_sKIP_BODY ())
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            (Tag.get_sKIP_BODY ())
        end)
        end [@@warning "-7"]

    initializer
      begin
        page <- "";
        command <- "";
        paramVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "MultipartRequestParamForwardTag" (fun arguments -> Obj.repr (new multipartRequestParamForwardTag (Obj.obj arguments)))


