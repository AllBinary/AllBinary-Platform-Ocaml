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
(* package org.allbinary.graphics.canvas.transition.progress *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)

let pROGRESS_FORM_SCREEN : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_pROGRESS_FORM_SCREEN () = !pROGRESS_FORM_SCREEN
let set_pROGRESS_FORM_SCREEN value' = pROGRESS_FORM_SCREEN := value'
let () = java_register_static "ProgressCanvasFactory.get_pROGRESS_FORM_SCREEN" (fun _ -> Obj.repr (get_pROGRESS_FORM_SCREEN ()))

let getInstance () : ProgressCanvas.progressCanvas =
        begin
        if ((Obj.repr !pROGRESS_FORM_SCREEN) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            pROGRESS_FORM_SCREEN := (new ProgressCanvas.progressCanvas ((StringUtil.getInstance ())#eMPTY_STRING, (BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
        end;
        ((Obj.magic !pROGRESS_FORM_SCREEN) :> ProgressCanvas.progressCanvas)
        end

and getLazyInstance () : PaintableInterface.paintableInterface =
        begin
        ((NullPaintable.getInstance ()) :> PaintableInterface.paintableInterface)
        end

let () = java_register_static "ProgressCanvasFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "ProgressCanvasFactory.getLazyInstance" (fun arguments -> Obj.repr (getLazyInstance (Obj.obj arguments)))
class progressCanvasFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ProgressCanvasFactory" (fun arguments -> Obj.repr (new progressCanvasFactory (Obj.obj arguments)))


