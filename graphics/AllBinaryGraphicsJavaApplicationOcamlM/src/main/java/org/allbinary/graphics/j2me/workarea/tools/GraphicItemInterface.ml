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
(* import java.awt *)
(* import javax.swing.tree.MutableTreeNode *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasDom *)
(* import org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension *)
(* import org.w3c.dom.Node *)

class virtual graphicItemInterface =
  object
    method virtual getName : unit -> string
    method virtual setColor : 'any1 . 'any1 -> unit
    method virtual getTreeNode : 'return . unit -> 'return
    method virtual getPointsInterface : 'return . unit -> 'return
    method virtual setPointsInterface : 'any1 . 'any1 -> unit
    method virtual isValid : unit -> bool
    method virtual isActive : unit -> bool
    method virtual deactivate : unit -> unit
    method virtual activate : unit -> unit
    method virtual setFulcrumPoint : 'any1 . 'any1 -> unit
    method virtual translate : int * int -> unit
    method virtual setRotate : float -> unit
    method virtual addRotate : float -> unit
    method virtual setAngle : float -> unit
    method virtual addAngle : float -> unit
    method virtual getAngle : unit -> float
    method virtual paint : 'any1 'any3 . 'any1 * float * 'any3 * int * int -> unit
    method virtual toDom : 'any1 'return . 'any1 -> 'return
    method virtual removePoint : unit -> GPoint.gPoint
    method virtual addPoint : 'any1 . 'any1 -> unit
    method virtual mouseClicked : 'any1 . 'any1 * int * int -> unit
    method virtual mouseEntered : 'any1 . 'any1 -> unit
    method virtual mouseExited : 'any1 . 'any1 -> unit
    method virtual mousePressed : 'any1 . 'any1 * int * int -> unit
    method virtual mouseReleased : 'any1 . 'any1 * int * int -> unit
    method virtual mouseDragged : 'any1 . 'any1 * int * int -> unit
    method virtual mouseMoved : 'any1 . 'any1 * int * int -> unit
    method virtual keyPressed : 'any1 . 'any1 -> unit
    method virtual keyReleased : 'any1 . 'any1 -> unit
    method virtual keyTyped : 'any1 . 'any1 -> unit
    method virtual duplicate : unit -> Obj.t
  end


