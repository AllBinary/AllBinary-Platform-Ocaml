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
(* import java.util.HashMap *)
(* import org.allbinary.log.LOGGING *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Node *)

class graphicItemFactory () =
  object
    val mutable graphicItems : java_hash_map = (Obj.magic 0)
    method graphicItems = graphicItems
    method set_graphicItems value' = graphicItems <- value'
    val mutable dEFAULT : Obj.t = Obj.repr 0
    method dEFAULT : 'r. 'r = Obj.magic dEFAULT
    method set_dEFAULT : 'v. 'v -> unit = fun value' -> dEFAULT <- Obj.repr value'
    
    

    (* Java overload getInstance(String) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(BasicArrayList) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        dEFAULT <- (Obj.repr (new SelectionToolFactory.selectionToolFactory ()));
        ();
        graphicItems <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        ignore (graphicItems#put ((LinesGraphicItem.getStaticName ()), (new LinesGraphicItemFactory.linesGraphicItemFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GraphicItemFactory" (fun arguments -> Obj.repr (new graphicItemFactory (Obj.obj arguments)))

let instance = (new graphicItemFactory ())
let get_instance () = instance
let () = java_register_static "GraphicItemFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GraphicItemFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


