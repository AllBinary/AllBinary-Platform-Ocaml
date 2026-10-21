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
(* package org.allbinary.logic.visual.transform.data *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]


let getInstance () : TransformDocumentInterface.transformDocumentInterface =
        begin
        ((Obj.magic (new TransformDocument.transformDocument ())) :> TransformDocumentInterface.transformDocumentInterface)
        end

let () = java_register_static "TransformDocumentFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class transformDocumentFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TransformDocumentFactory" (fun arguments -> Obj.repr (new transformDocumentFactory (Obj.obj arguments)))


