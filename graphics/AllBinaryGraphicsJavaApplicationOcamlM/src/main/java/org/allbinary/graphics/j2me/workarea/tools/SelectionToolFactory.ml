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
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel *)

class selectionToolFactory () =
  object
    

    method getInstance : 'any1 'return. 'any1 -> 'return = fun (canvasJPanel) ->
        let canvasJPanel = Obj.repr canvasJPanel in
        begin
        (Obj.magic ((Obj.obj (java_new "SelectionTool" (Obj.repr ((Obj.magic canvasJPanel)))))))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SelectionToolFactory" (fun arguments -> Obj.repr (new selectionToolFactory (Obj.obj arguments)))


