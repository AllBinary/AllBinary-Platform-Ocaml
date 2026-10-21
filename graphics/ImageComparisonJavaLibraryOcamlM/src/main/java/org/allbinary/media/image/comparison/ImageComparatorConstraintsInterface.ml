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
(* package org.allbinary.media.image.comparison *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.graphics.GPoint *)

class virtual imageComparatorConstraintsInterface =
  object
    method virtual getMaxNonMatchingPixelDeltas : unit -> int
    method virtual isCollisionWithAvoidRectangles : 'any1 . 'any1 -> bool
    (* Java overload isCollisionWithAvoidRectangles(GPoint) is not converted: OCaml has one method per name *)
    method virtual isColorAllowed : 'any2 'any3 . int * 'any2 * 'any3 -> bool
    method virtual isImageValid : 'any1 . 'any1 -> bool
    method virtual isFrameAllowed : int -> bool
  end


