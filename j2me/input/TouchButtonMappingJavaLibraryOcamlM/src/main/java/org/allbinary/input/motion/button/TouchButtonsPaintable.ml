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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.util.BasicArrayList *)

class touchButtonsPaintable ((basicColor : BasicColor.basicColor)) =
  object
    inherit Paintable.paintable ()
    val mutable foregroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method foregroundBasicColor = foregroundBasicColor
    method set_foregroundBasicColor value' = foregroundBasicColor <- value'
    val mutable foregroundColor : int = 0
    method foregroundColor = foregroundColor
    method set_foregroundColor value' = foregroundColor <- value'
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable touchButtonFactory : TouchButtonFactory.touchButtonFactory = (Obj.magic 0)
    method touchButtonFactory = touchButtonFactory
    method set_touchButtonFactory value' = touchButtonFactory <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((touchButtonFactory#getList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (basicSetColorUtil#setBasicColorP3 ((Obj.magic graphics), foregroundBasicColor, foregroundColor));
        let touchButton : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let index : int ref = ref ((!list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            touchButton := Obj.repr ((Obj.magic !list#objectArray.(!index)));
            ignore ((Obj.magic !touchButton)#paint ((Obj.magic graphics)))
        done;
        let index : int ref = ref ((!list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            touchButton := Obj.repr ((Obj.magic !list#objectArray.(!index)));
            ignore ((Obj.magic !touchButton)#paintHint ((Obj.magic graphics)))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        touchButtonFactory <- ((TouchButtonFactory.getInstance ()) :> TouchButtonFactory.touchButtonFactory);
        ();
        foregroundBasicColor <- basicColor;
        foregroundColor <- (basicColor#intValue ())
      end
  end
let () = java_register_constructor "TouchButtonsPaintable" (fun arguments -> Obj.repr (new touchButtonsPaintable (Obj.obj arguments)))


