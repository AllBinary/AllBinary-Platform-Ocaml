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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.paint.PaintableInterface *)

class virtual testInputInterface =
  object
    inherit PaintableInterface.paintableInterface
    method virtual up : unit -> unit
    method virtual down : unit -> unit
    method virtual left : unit -> unit
    method virtual right : unit -> unit
    method virtual strafeLeft : unit -> unit
    method virtual strafeRight : unit -> unit
  end


