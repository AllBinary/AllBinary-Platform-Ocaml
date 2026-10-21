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
(* package org.allbinary.data.tree.dom.document *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import java.io.StringBufferInputStream *)
(* import javax.xml.parsers.DocumentBuilder *)
(* import javax.xml.parsers.DocumentBuilderFactory *)
(* import org.w3c.dom.Document *)


let init () : unit =
        begin
        ignore (Obj.magic (java_call_static "System.setProperty" (Obj.repr ("jdk.xml.maxElementDepth", "0"))));
        ignore (Obj.magic (java_call_static "System.setProperty" (Obj.repr ("jdk.xml.xpathExprOpLimit", "0"))));
        ignore (Obj.magic (java_call_static "System.setProperty" (Obj.repr ("jdk.xml.xpathTotalOpLimit", "0"))));
        let lIMIT : string ref = ref ("500000") in ();
        ignore (Obj.magic (java_call_static "System.setProperty" (Obj.repr ("jdk.xml.maxGeneralEntitySizeLimit", !lIMIT))));
        ignore (Obj.magic (java_call_static "System.setProperty" (Obj.repr ("jdk.xml.totalEntitySizeLimit", !lIMIT))))
        end

and create : 'return. unit -> 'return = fun () ->
        begin
        (try
            let factory : Obj.t ref = ref ((Obj.repr (DocumentBuilderFactory.newInstance ()))) in ();
            let builder : Obj.t ref = ref ((Obj.repr ((Obj.magic !factory)#newDocumentBuilder ()))) in ();
            let document : Obj.t ref = ref ((Obj.repr ((Obj.magic !builder)#newDocument ()))) in ();
            (Obj.magic ((Obj.magic !document)))
        with e -> begin
            (Obj.magic ((Obj.magic 0)))
        end)
        end

(* Java overload create(InputStream) is not converted: OCaml has one method per name *)

(* Java overload create(String) is not converted: OCaml has one method per name *)

let () = java_register_static "DomDocumentHelper.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "DomDocumentHelper.create" (fun arguments -> Obj.repr (create (Obj.obj arguments)))
class domDocumentHelper () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DomDocumentHelper" (fun arguments -> Obj.repr (new domDocumentHelper (Obj.obj arguments)))


