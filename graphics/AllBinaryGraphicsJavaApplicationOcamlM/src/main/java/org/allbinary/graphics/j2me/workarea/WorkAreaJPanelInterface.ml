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
(* package org.allbinary.graphics.j2me.workarea *)

open Allbinary_java [@@warning "-33"]
(* import org.w3c.dom.Document *)

class virtual workAreaJPanelInterface =
  object
    method virtual getName : unit -> string
    method virtual deselect : unit -> unit
    method virtual select : unit -> unit
    method virtual changeZoom : int -> unit
    method virtual explodeAll : unit -> unit
    method virtual autoRotate : int * int -> unit
    method virtual autoExplode : int * int -> unit
    method virtual autoMirror : unit -> unit
    method virtual play : unit -> unit
    method virtual stop : unit -> unit
    method virtual isPlaying : unit -> bool
    method virtual toDocument : 'return . unit -> 'return
  end


