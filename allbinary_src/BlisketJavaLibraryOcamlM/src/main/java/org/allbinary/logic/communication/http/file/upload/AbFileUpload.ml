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
(* package org.allbinary.logic.communication.http.file.upload *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.apache.commons.fileupload.FileItemFactory *)
(* import org.apache.commons.fileupload.FileItemIterator *)
(* import org.apache.commons.fileupload.FileUpload *)
(* import org.apache.commons.fileupload.FileUploadException *)
(* import org.apache.commons.fileupload.servlet.ServletRequestContext *)

class abFileUpload (fileItemFactory) =
  object
    inherit FileUpload.fileUpload (fileItemFactory) as super
    
    

    method getItemIterator : 'any1 'return. 'any1 -> 'return = fun (request) ->
        let request = Obj.repr request in
        begin
        (Obj.magic ((super#getItemIterator ((new ServletRequestContext.servletRequestContext ((Obj.magic request)))))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AbFileUpload" (fun arguments -> Obj.repr (new abFileUpload (Obj.obj arguments)))


