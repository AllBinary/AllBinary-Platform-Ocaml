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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.displayable.MyCanvas *)

class runnableCanvasRefreshHelper ((runnableCanvas_arg : MyCanvas.myCanvas)) =
  object
    inherit Processor.processor ()
    val mutable runnableCanvas : MyCanvas.myCanvas = (Obj.magic 0)
    method runnableCanvas = runnableCanvas
    method set_runnableCanvas value' = runnableCanvas <- value'
    
    

    method process () : unit =
        begin
        ignore (runnableCanvas#repaint ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        runnableCanvas <- runnableCanvas_arg
      end
  end
let () = java_register_constructor "RunnableCanvasRefreshHelper" (fun arguments -> Obj.repr (new runnableCanvasRefreshHelper (Obj.obj arguments)))


