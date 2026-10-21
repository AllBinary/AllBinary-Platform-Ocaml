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
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullCanvas *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.graphics.paint.ProcessPaintable *)
(* import org.allbinary.util.CircularIndexUtil *)

let mAX_IMAGES : int = 4
let get_mAX_IMAGES () = mAX_IMAGES
let () = java_register_static "BufferedGameCanvasPaintHelper.get_mAX_IMAGES" (fun _ -> Obj.repr (get_mAX_IMAGES ()))
class bufferedGameCanvasPaintHelper ((_gameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas)) =
  object
    inherit ProcessPaintable.processPaintable ()
    val mutable gameCanvas : Obj.t = Obj.repr 0
    method gameCanvas : 'r. 'r = Obj.magic gameCanvas
    method set_gameCanvas : 'v. 'v -> unit = fun value' -> gameCanvas <- Obj.repr value'
    val mutable offScreenImage : Obj.t = Obj.repr 0
    method offScreenImage : 'r. 'r = Obj.magic offScreenImage
    method set_offScreenImage : 'v. 'v -> unit = fun value' -> offScreenImage <- Obj.repr value'
    val mutable previousImage : Obj.t = Obj.repr 0
    method previousImage : 'r. 'r = Obj.magic previousImage
    method set_previousImage : 'v. 'v -> unit = fun value' -> previousImage <- Obj.repr value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable drawCircularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method drawCircularIndexUtil = drawCircularIndexUtil
    method set_drawCircularIndexUtil value' = drawCircularIndexUtil <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method process () : unit =
        begin
        let myCanvas : MyCanvas.myCanvas ref = ref ((((Obj.magic (Obj.magic gameCanvas))) :> MyCanvas.myCanvas)) in ();
        ignore (!myCanvas#draw (((Obj.magic offScreenImage).((circularIndexUtil#getIndex ()))#getGraphics ())));
        ignore (circularIndexUtil#next ());
        ignore (drawCircularIndexUtil#next ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        previousImage <- Obj.repr ((Obj.magic offScreenImage).((drawCircularIndexUtil#getIndex ())));
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic previousImage), 0, 0, anchor))
        end [@@warning "-7-20"]

    initializer
      begin
        gameCanvas <- (Obj.repr (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ()))));
        offScreenImage <- (Obj.repr (Array.make (mAX_IMAGES) (Obj.magic 0)));
        previousImage <- (Obj.repr (NullImage.get_nULL_IMAGE ()));
        circularIndexUtil <- ((CircularIndexUtil.createInstance (mAX_IMAGES)) :> CircularIndexUtil.circularIndexUtil);
        drawCircularIndexUtil <- ((CircularIndexUtil.createInstanceAt ((mAX_IMAGES - 1), mAX_IMAGES)) :> CircularIndexUtil.circularIndexUtil);
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        raise (Failure ("No Longer Used"))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BufferedGameCanvasPaintHelper" (fun arguments -> Obj.repr (new bufferedGameCanvasPaintHelper (Obj.obj arguments)))


