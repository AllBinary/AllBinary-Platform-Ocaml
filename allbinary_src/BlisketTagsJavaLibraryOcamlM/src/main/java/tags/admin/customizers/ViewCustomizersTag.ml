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
(* package tags.admin.customizers *)

open Allbinary_java [@@warning "-33"]
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import tags.StoreValidationTransformTag *)

class viewCustomizersTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    
    

    method doStartTag () : int =
        begin
        (try
            ignore (self#setName ("Add Validation Customizers View"));
            ignore (self#setObjectFile ("views.admin.customizers.CustomizersValidationView"));
            (super#doStartTag ())
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ViewCustomizersTag" (fun arguments -> Obj.repr (new viewCustomizersTag (Obj.obj arguments)))


