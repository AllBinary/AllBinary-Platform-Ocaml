(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)

class fillAnimation ((pixelBuffer_arg : int array), (_width_arg : int), (_height_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior) as super
    val mutable pixelBuffer : int array = (Obj.magic 0)
    method pixelBuffer = pixelBuffer
    method set_pixelBuffer value' = pixelBuffer <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getBasicColorP ()) == (Obj.magic 0)) || ((Obj.repr ((self#getBasicColorP ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            changed := true
        end;
        ignore (super#setBasicColorP ((Obj.magic basicColor)));
        if !changed then begin
            (self#updateModifiers ())
        end
        end [@@warning "-7-20"]
    

    method changeBasicColor : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getChangeBasicColor ()) == (Obj.magic 0)) || ((Obj.repr ((self#getChangeBasicColor ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            changed := true
        end;
        ignore (super#changeBasicColor ((Obj.magic basicColor)));
        if !changed then begin
            (self#updateModifiers ())
        end
        end [@@warning "-7-20"]
    

    method setAlpha ((alpha : int)) : unit =
        begin
        let changed : bool ref = ref (false) in ();
        if (alphaP != alpha) then begin
            changed := true
        end;
        ignore (super#setAlpha (alpha));
        if !changed then begin
            (self#updateModifiers ())
        end
        end [@@warning "-7"]
    

    method setScale ((_scaleX : float), (_scaleY : float)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setMaxScale ((_maxScaleX : float), (_maxScaleY : float)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method updateModifiers () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (g) ->
        let g = Obj.repr g in
        begin
        ignore ((Obj.magic g)#drawRGB (pixelBuffer, 0, width, 0, 0, width, height, true))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        width <- 100;
        height <- 100;
        pixelBuffer <- pixelBuffer_arg
      end
  end
let () = java_register_constructor "FillAnimation" (fun arguments -> Obj.repr (new fillAnimation (Obj.obj arguments)))


