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
(* package org.allbinary.business.category *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)

class categoryComponent ((categoryInterface : CategoryInterface.categoryInterface)) =
  object (self)
    inherit CategoryView.categoryView (categoryInterface)
    val mutable nO_TYPE : int = 0
    method nO_TYPE = nO_TYPE
    method set_nO_TYPE value' = nO_TYPE <- value'
    
    

    method getTypeId () : int =
        begin
        nO_TYPE
        end [@@warning "-7"]
    

    method getTransformDocumentInterface () : TransformDocumentInterface.transformDocumentInterface =
        begin
        ((Obj.magic 0) :> TransformDocumentInterface.transformDocumentInterface)
        end [@@warning "-7"]
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        ((Obj.magic 0) :> TransformInfoInterface.transformInfoInterface)
        end [@@warning "-7"]
    

    method setTransformDocumentInterface : 'any1. 'any1 -> unit = fun (_viewDocumentInterface) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
        ignore ((Obj.magic !document)#appendChild (((new CategoryView.categoryView ((self#getCategoryInterface ())))#toXmlNode ((Obj.magic !document)))));
        (Obj.magic ((Obj.magic !document)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (Obj.magic 0)
        end [@@warning "-7"]

    initializer
      begin
        nO_TYPE <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CategoryComponent" (fun arguments -> Obj.repr (new categoryComponent (Obj.obj arguments)))


