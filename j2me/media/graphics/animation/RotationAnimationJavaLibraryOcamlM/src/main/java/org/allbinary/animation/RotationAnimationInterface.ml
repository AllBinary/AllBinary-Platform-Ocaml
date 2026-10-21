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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.direction.DirectionalInterface *)
(* import org.allbinary.math.AngleInfo *)

class virtual rotationAnimationInterface =
  object
    inherit IndexedAnimationInterface.indexedAnimationInterface
    inherit DirectionalInterface.directionalInterface
    method virtual getAngleInfoP : unit -> AngleInfo.angleInfo
    method virtual nextRotation : unit -> unit
    method virtual previousRotation : unit -> unit
  end


