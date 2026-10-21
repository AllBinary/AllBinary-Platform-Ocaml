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
(* package org.allbinary.input.automation.robot *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import javax.help.HelpSet *)

class virtual inputRobotInterface =
  object
    method virtual getName : unit -> string
    method virtual getHelpSet : 'return . unit -> 'return
    method virtual createScreenCapture : 'any1 'return . 'any1 -> 'return
    method virtual delay : int -> unit
    method virtual getAutoDelay : unit -> int
    method virtual getPixelColor : 'return . int * int -> 'return
    method virtual isAutoWaitForIdle : unit -> bool
    method virtual keyPress : int -> unit
    method virtual keyRelease : int -> unit
    method virtual getMousePoint : 'return . unit -> 'return
    method virtual mouseMove : int * int -> unit
    method virtual mousePress : int -> unit
    method virtual mouseRelease : int -> unit
    method virtual mouseWheel : int -> unit
    method virtual setAutoDelay : int -> unit
    method virtual setAutoWaitForIdle : bool -> unit
    method virtual toString : unit -> string
    method virtual waitForIdle : unit -> unit
    (* Java overload mouseMove(Point) is not converted: OCaml has one method per name *)
    method virtual mouseMoveToTarget : 'any1 . 'any1 -> unit
    (* Java overload mouseMoveToTarget(Rectangle, Integer, Integer) is not converted: OCaml has one method per name *)
  end


