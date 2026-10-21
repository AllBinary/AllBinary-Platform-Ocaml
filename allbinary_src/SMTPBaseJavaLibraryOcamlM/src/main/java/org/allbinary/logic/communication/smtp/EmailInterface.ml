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
(* package org.allbinary.logic.communication.smtp *)

open Allbinary_java [@@warning "-33"]
(* import javax.mail.internet.MimeMessage *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface *)

class virtual emailInterface =
  object
    inherit DomNodeInterface.domNodeInterface
    inherit DomDocumentMappingInterface.domDocumentMappingInterface
    method virtual getDebugInfo : unit -> string
    method virtual getMimeMessage : 'return . unit -> 'return
    method virtual log : unit -> string
  end


