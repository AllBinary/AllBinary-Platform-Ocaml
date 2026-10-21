(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.color.BasicColor *)

class aBCustomImageItem ((label : string), _image, (_layout : int), (_altText : string), (basicColor : BasicColor.basicColor), (_yOffset_arg : int)) =
  object
    inherit ABCustomItem.aBCustomItem (label, basicColor, basicColor)
    val mutable yOffset : int = 0
    method yOffset = yOffset
    method set_yOffset value' = yOffset <- value'
    
    

    method getImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((NullImage.get_nULL_IMAGE ())))
        end [@@warning "-7"]

    initializer
      begin
        yOffset <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ABCustomImageItem" (fun arguments -> Obj.repr (new aBCustomImageItem (Obj.obj arguments)))


