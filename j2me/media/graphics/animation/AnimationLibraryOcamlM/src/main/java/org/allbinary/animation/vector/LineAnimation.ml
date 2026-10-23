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
(* package org.allbinary.animation.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.ColorCompositeInterface *)
(* import org.allbinary.layer.PositionInterface *)
(* import org.allbinary.logic.NullUtil *)

class lineAnimation ((basicColor : BasicColor.basicColor)) =
  object (self)
    inherit Animation.animation ()
    val mutable newLine : int array array = (Obj.magic 0)
    method newLine = newLine
    method set_newLine value' = newLine <- value'
    val mutable tempLine : int array array = (Obj.magic 0)
    method tempLine = tempLine
    method set_tempLine value' = tempLine <- value'
    val mutable line : int array array = (Obj.magic 0)
    method line = line
    method set_line value' = line <- value'
    
    

    method init ((x : int), (y : int)) : unit =
        begin
        newLine.(0).(0) <- x;
        newLine.(0).(1) <- y;
        newLine.(1).(0) <- x;
        newLine.(1).(1) <- y;
        tempLine <- line;
        line <- newLine;
        newLine <- tempLine
        end [@@warning "-7"]
    

    method setPosition ((x : int), (y : int), (_z : int)) : unit =
        begin
        newLine.(0).(0) <- line.(1).(0);
        newLine.(0).(1) <- line.(1).(1);
        newLine.(1).(0) <- x;
        newLine.(1).(1) <- y;
        tempLine <- line;
        line <- newLine;
        newLine <- tempLine
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (_x : int), (_y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let currentLine : int array array ref = ref (line) in ();
        ignore ((self#basicSetColorUtil)#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())));
        ignore ((Obj.magic graphics)#drawLine (!currentLine.(0).(0), !currentLine.(0).(1), !currentLine.(1).(0), !currentLine.(1).(1)))
        end [@@warning "-7-20"]
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        newLine <- (Array.make_matrix (2) (2) 0);
        tempLine <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY;
        line <- (Array.make_matrix (2) (2) 0);
        ();
        ignore (self#setBasicColorP (basicColor))
      end
  end
let () = java_register_constructor "LineAnimation" (fun arguments -> Obj.repr (new lineAnimation (Obj.obj arguments)))


