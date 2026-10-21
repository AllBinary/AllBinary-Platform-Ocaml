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
(* import javax.xml.transform.Transformer *)
(* import javax.xml.transform.TransformerFactory *)
(* import javax.xml.transform.dom.DOMSource *)
(* import javax.xml.transform.stream.StreamResult *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.w3c.dom.Document *)


let save : 'any1 'any2. 'any1 * 'any2 -> unit = fun (file, document) ->
        let file = Obj.repr file in
        let document = Obj.repr document in
        begin
        let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref (((Obj.magic 0) :> AbDataOutputStream.abDataOutputStream)) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close (!dataOutputStream))
        ) (fun () -> (try
            let copyTransformerFactory : Obj.t ref = ref ((Obj.repr (TransformerFactory.newInstance ()))) in ();
            let copyTransformer : Obj.t ref = ref ((Obj.repr ((Obj.magic !copyTransformerFactory)#newTransformer ()))) in ();
            let domSource : Obj.t ref = ref ((Obj.repr (new DOMSource.dOMSource ((Obj.magic document))))) in ();
            if ((Obj.magic file)#isFile ()) then begin
                ignore ((Obj.magic file)#delete ())
            end;
            ignore ((Obj.magic file)#createNewFile ());
            dataOutputStream := ((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic file)));
            let streamResult : Obj.t ref = ref ((Obj.repr (new StreamResult.streamResult (!dataOutputStream)))) in ();
            ignore ((Obj.magic !copyTransformer)#transform ((Obj.magic !domSource), (Obj.magic !streamResult)));
            ignore (!dataOutputStream#flush ())
        with e -> begin
            raise e
        end))
        end [@@warning "-20"]

let () = java_register_static "DomDocumentFileHelper.save" (fun arguments -> Obj.repr (save (Obj.obj arguments)))
class domDocumentFileHelper () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DomDocumentFileHelper" (fun arguments -> Obj.repr (new domDocumentFileHelper (Obj.obj arguments)))

let createDocument : 'any1 'return. 'any1 -> 'return = fun (xmlFile) ->
        let xmlFile = Obj.repr xmlFile in
        begin
        (try
            (Obj.magic ((DomDocumentHelper.create ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic xmlFile)))))))))
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]
let () = java_register_static "DomDocumentFileHelper.createDocument" (fun arguments -> Obj.repr (createDocument (Obj.obj arguments)))


