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
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class virtual specialGameInputInterface =
  object
    inherit PaintableInterface.paintableInterface
    method virtual up : unit -> unit
    method virtual down : unit -> unit
    method virtual right : unit -> unit
    method virtual left : unit -> unit
    method virtual strafeLeft : unit -> unit
    method virtual strafeRight : unit -> unit
    method virtual fire : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual special1 : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual special2 : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual special3 : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual special4 : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual special5 : 'any1 'any2 . 'any1 * 'any2 -> unit
  end


