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
(* package org.allbinary.graphics.displayable *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)

class virtual displayableInterface =
  object
    method virtual addCommand : 'any1 . 'any1 -> unit
    method virtual getHeight : unit -> int
    method virtual getWidth : unit -> int
    method virtual removeCommand : 'any1 . 'any1 -> unit
    method virtual setCommandListener : 'any1 . 'any1 -> unit
  end


