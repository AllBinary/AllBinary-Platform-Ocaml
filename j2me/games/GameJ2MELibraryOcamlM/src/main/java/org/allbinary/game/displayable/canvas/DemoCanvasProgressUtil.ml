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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.paint.PaintableComposite *)
(* import org.allbinary.graphics.paint.PaintableInterface *)


let showProgressOptionallyInTheBackground : 'any1. 'any1 * bool -> unit = fun (demoCanvas, (background : bool)) ->
        let demoCanvas = Obj.repr demoCanvas in
        begin
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#startBackground (background));
        let paintableArray : PaintableInterface.paintableInterface array ref = ref ((Array.make (2) (Obj.magic 0))) in ();
        !paintableArray.(0) <- (!progressCanvas :> PaintableInterface.paintableInterface);
        !paintableArray.(1) <- (((Obj.magic demoCanvas)#getDefaultPaintableInterface ()) :> PaintableInterface.paintableInterface);
        ignore ((Obj.magic demoCanvas)#setDefaultPaintableInterface ((new PaintableComposite.paintableComposite (!paintableArray))));
        ignore ((Obj.magic demoCanvas)#setPaintableInterface (((Obj.magic demoCanvas)#getDefaultPaintableInterface ())))
        end [@@warning "-20"]

let () = java_register_static "DemoCanvasProgressUtil.showProgressOptionallyInTheBackground" (fun arguments -> Obj.repr (showProgressOptionallyInTheBackground (Obj.obj arguments)))
class demoCanvasProgressUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DemoCanvasProgressUtil" (fun arguments -> Obj.repr (new demoCanvasProgressUtil (Obj.obj arguments)))

let showProgress : 'any1. 'any1 -> unit = fun (demoCanvas) ->
        let demoCanvas = Obj.repr demoCanvas in
        begin
        ignore (showProgressOptionallyInTheBackground ((Obj.magic demoCanvas), false))
        end [@@warning "-20"]
let () = java_register_static "DemoCanvasProgressUtil.showProgress" (fun arguments -> Obj.repr (showProgress (Obj.obj arguments)))


