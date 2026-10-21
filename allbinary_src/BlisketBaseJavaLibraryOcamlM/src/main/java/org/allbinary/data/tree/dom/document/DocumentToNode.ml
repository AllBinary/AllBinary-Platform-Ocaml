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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)

let xMLROOT : string = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
let get_xMLROOT () = xMLROOT
let () = java_register_static "DocumentToNode.get_xMLROOT" (fun _ -> Obj.repr (get_xMLROOT ()))
let xMLROOTSTART : string = "<?xml"
let get_xMLROOTSTART () = xMLROOTSTART
let () = java_register_static "DocumentToNode.get_xMLROOTSTART" (fun _ -> Obj.repr (get_xMLROOTSTART ()))
let xMLROOTEND : string = "?>"
let get_xMLROOTEND () = xMLROOTEND
let () = java_register_static "DocumentToNode.get_xMLROOTEND" (fun _ -> Obj.repr (get_xMLROOTEND ()))
let xMLJSPROOTSTART : string = "<jsp:root"
let get_xMLJSPROOTSTART () = xMLJSPROOTSTART
let () = java_register_static "DocumentToNode.get_xMLJSPROOTSTART" (fun _ -> Obj.repr (get_xMLJSPROOTSTART ()))
let xMLEND : string = ">"
let get_xMLEND () = xMLEND
let () = java_register_static "DocumentToNode.get_xMLEND" (fun _ -> Obj.repr (get_xMLEND ()))
let xMLJSPROOTENDSTART : string = "</jsp:root"
let get_xMLJSPROOTENDSTART () = xMLJSPROOTENDSTART
let () = java_register_static "DocumentToNode.get_xMLJSPROOTENDSTART" (fun _ -> Obj.repr (get_xMLJSPROOTENDSTART ()))

let remove ((documentString : string), (start : string), (end_ : string)) : string =
        try
        begin
        let startIndex : int ref = ref (0) in ();
        while (((startIndex := (java_string_index_of documentString (Obj.repr (start))); !startIndex)) != (-1)) do
            if (!startIndex >= 0) then begin
                let endIndex : int ref = ref ((java_string_index_of_from documentString (Obj.repr (end_)) (!startIndex))) in ();
                if (!endIndex >= 0) then begin
                    let startString : string ref = ref ((String.sub documentString (0) ((!startIndex) - (0)))) in ();
                    let resultString : string ref = ref ((String.sub documentString ((!endIndex + 1)) (String.length documentString - ((!endIndex + 1))))) in ();
                    raise (Java_return (Obj.repr ((!startString ^ !resultString))))
                end
            end
        done;
        documentString
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "DocumentToNode.remove" (fun arguments -> Obj.repr (remove (Obj.obj arguments)))
class documentToNode () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DocumentToNode" (fun arguments -> Obj.repr (new documentToNode (Obj.obj arguments)))

let convertDocumentToNodeString ((documentString : string)) : string =
        let documentString = ref documentString in
        begin
        documentString := (remove (!documentString, xMLJSPROOTSTART, xMLEND));
        documentString := (remove (!documentString, xMLJSPROOTENDSTART, xMLEND));
        let replaceXmlRoot : Replace.replace ref = ref (((new Replace.replace (xMLROOT, (StringUtil.getInstance ())#eMPTY_STRING)) :> Replace.replace)) in ();
        (!replaceXmlRoot#all (!documentString))
        end

and removeXmlDefinitionFromDocumentString ((documentString : string)) : string =
        begin
        (remove (documentString, xMLROOTSTART, xMLROOTEND))
        end
let () = java_register_static "DocumentToNode.convertDocumentToNodeString" (fun arguments -> Obj.repr (convertDocumentToNodeString (Obj.obj arguments)))
let () = java_register_static "DocumentToNode.removeXmlDefinitionFromDocumentString" (fun arguments -> Obj.repr (removeXmlDefinitionFromDocumentString (Obj.obj arguments)))


