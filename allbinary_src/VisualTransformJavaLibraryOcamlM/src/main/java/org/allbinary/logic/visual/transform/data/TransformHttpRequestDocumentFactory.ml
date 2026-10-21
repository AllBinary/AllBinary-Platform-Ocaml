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
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)


let getInstance : 'any1 'any2. 'any1 * 'any2 -> TransformDocumentInterface.transformDocumentInterface = fun (pageContext, weblisketSession) ->
        let pageContext = Obj.repr pageContext in
        let weblisketSession = Obj.repr weblisketSession in
        begin
        ((Obj.magic (new TransformHttpRequestDocument.transformHttpRequestDocument ((Obj.magic pageContext), (Obj.magic weblisketSession)))) :> TransformDocumentInterface.transformDocumentInterface)
        end [@@warning "-20"]

let () = java_register_static "TransformHttpRequestDocumentFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class transformHttpRequestDocumentFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TransformHttpRequestDocumentFactory" (fun arguments -> Obj.repr (new transformHttpRequestDocumentFactory (Obj.obj arguments)))


