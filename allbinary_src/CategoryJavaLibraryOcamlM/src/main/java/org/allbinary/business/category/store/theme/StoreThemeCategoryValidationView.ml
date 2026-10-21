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
(* package org.allbinary.business.category.store.theme *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class storeThemeCategoryValidationView ((categoryInterface : StoreThemeCategoryInterface.storeThemeCategoryInterface)) =
  object
    inherit StoreThemeCategoryView.storeThemeCategoryView ((Obj.magic categoryInterface))
    
    

    method isValid () : bool =
        begin
        true
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
        "Error"
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "StoreThemeCategoryValidationView" (fun arguments -> Obj.repr (new storeThemeCategoryValidationView (Obj.obj arguments)))


