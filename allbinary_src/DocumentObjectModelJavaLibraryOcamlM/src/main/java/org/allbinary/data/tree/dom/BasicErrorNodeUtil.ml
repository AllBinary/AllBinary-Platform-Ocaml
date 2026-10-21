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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.error.ErrorData *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)


let get : 'any1 'return. 'any1 * string -> 'return = fun (document, (errorText : string)) ->
        let document = Obj.repr document in
        begin
        (try
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ErrorData.getInstance ())#nAME)))) in ();
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (ErrorData.getInstance ())#tEXT, errorText))));
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            raise (Failure ("Error Node Creation Failure"))
        end)
        end [@@warning "-20"]

let () = java_register_static "BasicErrorNodeUtil.get" (fun arguments -> Obj.repr (get (Obj.obj arguments)))
class basicErrorNodeUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BasicErrorNodeUtil" (fun arguments -> Obj.repr (new basicErrorNodeUtil (Obj.obj arguments)))


