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
[@@@warning "-20"]
(* import javax.microedition.lcdui.NullCanvas *)
(* import org.allbinary.canvas.RunnableCanvas *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.input.GameInputStrings *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)

class demoCanvasBasicStartInputProcessor ((gameKeyEventList : BasicArrayList.basicArrayList), (gameCanvas : RunnableCanvas.runnableCanvas)) =
  object (self)
    inherit BasicMenuInputProcessor.basicMenuInputProcessor (gameKeyEventList, (-1), gameCanvas)
    
    

    method processInputList () : int =
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getGameKeyEventList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic 0) :> GameKeyEvent.gameKeyEvent)) in ();
        for index = 0 to !size - 1 do
            gameKeyEvent := (Obj.magic !list#objectArray.(index));
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Start GameKey: "))#append (((StringUtil.getInstance ())#toString (!gameKeyEvent)))))), self, (GameInputStrings.getInstance ())#pROCESS_INPUT))
        done;
        ignore (((self#getCanvas ())#getCustomCommandListener ())#commandAction ((GameCommandsFactory.getInstance ())#sTART_COMMAND, (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ())))));
        !size
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "DemoCanvasBasicStartInputProcessor" (fun arguments -> Obj.repr (new demoCanvasBasicStartInputProcessor (Obj.obj arguments)))


