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
(* package org.allbinary.media.image.comparison.motion *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)

class virtual motionRectangleConstraintsInterface =
  object
    method virtual getMaxMotionRectangles : unit -> int
    method virtual getMinDimension : 'return . unit -> 'return
    method virtual getMinArea : unit -> int
    method virtual getMaxDimension : 'return . unit -> 'return
    method virtual isTooSmall : 'any1 . 'any1 -> bool
    method virtual isAreaTooSmall : 'any1 . 'any1 -> bool
    method virtual isTooBig : 'any1 . 'any1 -> bool
    method virtual isValid : 'any2 'any3 . int * 'any2 * 'any3 -> bool
  end


