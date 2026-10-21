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
(* package org.allbinary.animation.image.sprite *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.game.Sprite *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.ColorCompositeInterface *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)

class spriteIndexedAnimation (sprite_arg, image_arg, (basicColorArray_arg : BasicColor.basicColor array), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable sprite : Obj.t = Obj.repr 0
    method sprite : 'r. 'r = Obj.magic sprite
    method set_sprite : 'v. 'v -> unit = fun value' -> sprite <- Obj.repr value'
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable basicColorArray : BasicColor.basicColor array = (Obj.magic 0)
    method basicColorArray = basicColorArray
    method set_basicColorArray value' = basicColorArray <- value'
    
    

    method getAnimationSize () : int =
        begin
        (self#getSize ())
        end [@@warning "-7"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        for index = 0 to (Array.length basicColorArray) - 1 do
            if ((Obj.repr (Obj.magic basicColor)) == (Obj.repr basicColorArray.(index))) then begin
                (self#setFrame (index));
                raise Java_break
            end
        done
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        try
        begin
        if ((Array.length basicColorArray) < (self#getFrame ())) then begin
            raise (Java_return (Obj.repr (basicColorArray.((self#getFrame ())))))
        end else begin
            raise (Java_return (Obj.repr ((BasicColorFactory.getInstance ())#wHITE)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method paintFrame : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (frame : int), (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        (self#setFrame (frame));
        ignore ((Obj.magic sprite)#setPosition (x, y));
        ignore ((Obj.magic sprite)#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic sprite)#setPosition (x, y));
        ignore ((Obj.magic sprite)#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic sprite)#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method nextFrame () : unit =
        begin
        ignore ((Obj.magic sprite)#nextFrame ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore ((Obj.magic sprite)#prevFrame ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        ((Obj.magic sprite)#getRawFrameCount ())
        end [@@warning "-7"]
    

    method setFrame ((frame : int)) : unit =
        begin
        ignore ((Obj.magic sprite)#setFrame (frame))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        ((Obj.magic sprite)#getFrame ())
        end [@@warning "-7"]
    

    method isLastFrame () : bool =
        try
        begin
        if (((Obj.magic sprite)#getFrame ()) == ((self#getSize ()) - 1)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getLastFrame () : int =
        begin
        (self#getSize ())
        end [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method finalize () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        sprite <- Obj.repr (sprite_arg);
        image <- Obj.repr (image_arg);
        basicColorArray <- basicColorArray_arg;
        if (((Array.length basicColorArray) <> 0) && ((self#getSize ()) <> (Array.length basicColorArray))) then begin
            raise (Failure ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#tOTAL_LABEL))#appendint ((self#getSize ())))#append ("!="))#appendint ((Array.length basicColorArray)))))))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "SpriteIndexedAnimation" (fun arguments -> Obj.repr (new spriteIndexedAnimation (Obj.obj arguments)))


