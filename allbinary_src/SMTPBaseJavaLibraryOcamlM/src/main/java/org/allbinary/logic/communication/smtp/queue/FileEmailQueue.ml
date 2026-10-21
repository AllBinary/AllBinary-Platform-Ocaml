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
(* package org.allbinary.logic.communication.smtp.queue *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.document.DomDocumentQueueInterface *)

class fileEmailQueue () =
  object
    val mutable domDocumentQueueInterface : DomDocumentQueueInterface.domDocumentQueueInterface = (Obj.magic 0)
    method domDocumentQueueInterface = domDocumentQueueInterface
    method set_domDocumentQueueInterface value' = domDocumentQueueInterface <- value'
    

    initializer
      begin
        domDocumentQueueInterface <- ((Obj.magic 0) :> DomDocumentQueueInterface.domDocumentQueueInterface);
        ();
        ()
      end
  end
let () = java_register_constructor "FileEmailQueue" (fun arguments -> Obj.repr (new fileEmailQueue (Obj.obj arguments)))


