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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.ItemStateListener *)
(* import org.allbinary.game.state.GameStateCompositeInterface *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.thread.RunnableInterface *)
(* import org.allbinary.util.ABHashtable *)

class virtual gameCanvasRunnableInterface =
  object
    inherit PaintableInterface.paintableInterface
    inherit GameStateCompositeInterface.gameStateCompositeInterface
    method virtual getTitle : unit -> string
    method virtual isInitialized : unit -> bool
    method virtual isPaused : unit -> bool
    method virtual unPause : unit -> unit
    method virtual pause : unit -> unit
    method virtual isHighScoreSubmitted : unit -> bool
    method virtual setHighScoreSubmitted : bool -> unit
    method virtual processGameOver : unit -> unit
    method virtual isGameOver : unit -> bool
    method virtual initCommands : 'any1 . 'any1 -> unit
    method virtual getCurrentStateHashtable : 'return . unit -> 'return
    method virtual getLoadStateHashtable : 'return . unit -> 'return
    method virtual setLoadStateHashtable : 'any1 . 'any1 -> unit
    method virtual getType : unit -> int
  end


