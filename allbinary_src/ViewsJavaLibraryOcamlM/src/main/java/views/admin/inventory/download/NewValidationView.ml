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
(* package views.admin.inventory.download *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.user.commerce.inventory.item.BasicItem *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class newValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object
    inherit DownloadableInventoryItemView.downloadableInventoryItemView (transformInfoInterface, (StringUtil.getInstance ())#eMPTY_STRING)
    
    

    method isValid () : bool =
        begin
        (try
            true
        with e -> begin
            false
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
    

    method validationInfo () : string =
        begin
        "Error Creating New Downloadable Item"
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        itemInterface <- (Obj.magic (new BasicItem.basicItem ()));
        downloadableItem <- (new DownloadableItem.downloadableItem ((itemInterface#getId ())))
      end
  end
let () = java_register_constructor "NewValidationView" (fun arguments -> Obj.repr (new newValidationView (Obj.obj arguments)))


