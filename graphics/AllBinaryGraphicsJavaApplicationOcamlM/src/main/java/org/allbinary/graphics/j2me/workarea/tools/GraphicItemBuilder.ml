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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.w3c.dom.Node *)

class graphicItemBuilder () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GraphicItemBuilder" (fun arguments -> Obj.repr (new graphicItemBuilder (Obj.obj arguments)))

let getInstance : 'any1 'return. 'any1 -> 'return = fun (node) ->
        let node = Obj.repr node in
        try
        begin
        let graphicItemName : string ref = ref (((Obj.magic node)#getNodeName ())) in ();
        if ((String.compare !graphicItemName ((Obj.magic (java_call_static "PointsDomUtil.getInstance" (Obj.repr ())))#lINES)) == 0) then begin
            raise (Java_return (Obj.repr ((Obj.obj (java_new "LinesGraphicItem" (Obj.repr ((Obj.magic node))))))))
        end else begin
            raise (Failure (("Graphic Item Does Not Exist: " ^ !graphicItemName)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
let () = java_register_static "GraphicItemBuilder.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


