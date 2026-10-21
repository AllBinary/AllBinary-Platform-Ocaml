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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.identification.GroupInterfaceCompositeInterface *)
(* import org.allbinary.graphics.paint.PaintableInterface *)

class virtual layerInterface =
  object
    inherit NamedInterface.namedInterface
    inherit PaintableInterface.paintableInterface
    inherit GroupInterfaceCompositeInterface.groupInterfaceCompositeInterface
    inherit PositionInterface.positionInterface
    method virtual getHeight : unit -> int
    method virtual getWidth : unit -> int
    method virtual getHalfHeight : unit -> int
    method virtual getHalfWidth : unit -> int
    method virtual getXP : unit -> int
    method virtual getYP : unit -> int
    method virtual getZP : unit -> int
    method virtual getX2 : unit -> int
    method virtual getY2 : unit -> int
    method virtual getZ2 : unit -> int
    method virtual isVisible : unit -> bool
    method virtual moveDXYZ : int * int * int -> unit
    method virtual setVisible : bool -> unit
    method virtual implmentsTickableInterface : unit -> bool
    method virtual implmentsCollidableInterface : unit -> bool
    method virtual implmentsGameInputInterface : unit -> bool
    method virtual implmentsArtificialIntelligenceCompositeInterface : unit -> bool
    method virtual getType : unit -> int
  end


