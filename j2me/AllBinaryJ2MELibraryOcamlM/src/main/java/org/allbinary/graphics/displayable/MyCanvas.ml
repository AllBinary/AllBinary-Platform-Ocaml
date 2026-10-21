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
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.NullCommandListener *)
(* import org.allbinary.graphics.displayable.command.MyCommandInterface *)
(* import org.allbinary.graphics.displayable.command.MyCommandsFactory *)
(* import org.allbinary.input.TouchJ2ME *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABStack *)

class myCanvas ((name_arg : string), (childNameList_arg : BasicArrayList.basicArrayList)) =
  object (self)
    inherit Canvas.canvas () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable canvasStrings : CanvasStrings.canvasStrings = (Obj.magic 0)
    method canvasStrings = canvasStrings
    method set_canvasStrings value' = canvasStrings <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable childNameList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method childNameList = childNameList
    method set_childNameList value' = childNameList <- value'
    val mutable commandStack : Obj.t = Obj.repr 0
    method commandStack : 'r. 'r = Obj.magic commandStack
    method set_commandStack : 'v. 'v -> unit = fun value' -> commandStack <- Obj.repr value'
    val mutable commandListener : Obj.t = Obj.repr 0
    method commandListener : 'r. 'r = Obj.magic commandListener
    method set_commandListener : 'v. 'v -> unit = fun value' -> commandListener <- Obj.repr value'
    val mutable paused : bool = false
    method paused = paused
    method set_paused value' = paused <- value'
    val mutable touchME : Obj.t = Obj.repr 0
    method touchME : 'r. 'r = Obj.magic touchME
    method set_touchME : 'v. 'v -> unit = fun value' -> touchME <- Obj.repr value'
    
    

    method setFullScreenMode ((mode : bool)) : unit =
        begin
        ignore (super#setFullScreenMode (mode));
        ignore (displayInfo#update (self, canvasStrings#sET_FULL_SCREEN_MODE))
        end [@@warning "-7"]
    

    method sizeChanged ((_w : int), (_h : int)) : unit =
        begin
        ignore (displayInfo#update (self, canvasStrings#sIZE_CHANGED))
        end [@@warning "-7"]
    

    method getCommandStack : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic commandStack)))
        end [@@warning "-7"]
    

    method isCommand : 'any1. 'any1 -> bool = fun (command) ->
        let command = Obj.repr command in
        begin
        ((Obj.magic commandStack)#contains ((Obj.magic command)))
        end [@@warning "-7-20"]
    

    method addCommand : 'any1. 'any1 -> unit = fun (command) ->
        let command = Obj.repr command in
        begin
        if (not ((Obj.magic commandStack)#contains ((Obj.magic command)))) then begin
            ignore ((Obj.magic commandStack)#push ((Obj.magic command)));
            ignore (super#addCommand ((Obj.magic command)))
        end
        end [@@warning "-7-20"]
    

    method removeCommand : 'any1. 'any1 -> unit = fun (command) ->
        let command = Obj.repr command in
        begin
        ignore ((Obj.magic commandStack)#removeElement ((Obj.magic command)));
        ignore (super#removeCommand ((Obj.magic command)))
        end [@@warning "-7-20"]
    

    method removeAllCommands () : unit =
        begin
        let size : int ref = ref (((Obj.magic commandStack)#size ())) in ();
        for _index = 0 to !size - 1 do
            ignore (super#removeCommand ((Obj.magic ((Obj.magic commandStack)#pop ()))))
        done
        end [@@warning "-7"]
    

    method setCommandListener : 'any1. 'any1 -> unit = fun (l) ->
        let l = Obj.repr l in
        begin
        ignore (super#setCommandListener ((Obj.magic l)));
        commandListener <- Obj.repr ((Obj.magic l))
        end [@@warning "-7-20"]
    

    method getCustomCommandListener : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic commandListener)))
        end [@@warning "-7"]
    

    method isPaused () : bool =
        begin
        paused
        end [@@warning "-7"]
    

    method removePauseCommand () : unit =
        begin
        (self#removeCommand ((MyCommandsFactory.getInstance ())#pAUSE_COMMAND))
        end [@@warning "-7"]
    

    method pause () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, canvasStrings#pAUSE));
        (self#removePauseCommand ());
        (self#addCommand ((MyCommandsFactory.getInstance ())#rESUME_COMMAND));
        (self#setPaused (true))
        end [@@warning "-7"]
    

    method unPause () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, canvasStrings#uN_PAUSE));
        (self#removeCommand ((MyCommandsFactory.getInstance ())#rESUME_COMMAND));
        (self#addCommand ((MyCommandsFactory.getInstance ())#pAUSE_COMMAND));
        (self#setPaused (false))
        end [@@warning "-7"]
    

    method process () : unit =
        begin
        ignore (displayInfo#process ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method draw : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method hasChild : 'any1. 'any1 -> bool = fun (displayable) ->
        let displayable = Obj.repr displayable in
        begin
        (childNameList#contains ((Obj.magic displayable)#name))
        end [@@warning "-7-20"]
    

    method destroy () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ("Destroyed MyCanvas", self, "destroy"))
        end [@@warning "-7"]
    

    method setPaused ((isPaused : bool)) : unit =
        begin
        paused <- isPaused
        end [@@warning "-7"]
    

    method keyPressedByDevice ((_keyCode : int), (_deviceId : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method keyRepeatedByDevice ((_keyCode : int), (_deviceId : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method keyReleasedByDevice ((_keyCode : int), (_deviceId : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method pointerDragged ((x : int), (y : int)) : unit =
        begin
        ignore ((Obj.magic touchME)#pointerDragged (x, y))
        end [@@warning "-7"]
    

    method pointerPressed ((x : int), (y : int)) : unit =
        begin
        ignore ((Obj.magic touchME)#pointerPressed (x, y))
        end [@@warning "-7"]
    

    method pointerReleased ((x : int), (y : int)) : unit =
        begin
        ignore ((Obj.magic touchME)#pointerReleased (x, y))
        end [@@warning "-7"]
    

    method nextSong : 'any1. 'any1 * int * int -> unit = fun (_nextSongSound, (_leftVolume : int), (_rightVolume : int)) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        canvasStrings <- ((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings);
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        ();
        ();
        ();
        commandListener <- (Obj.repr (NullCommandListener.get_nULL_COMMAND_LISTENER ()));
        paused <- false;
        touchME <- (Obj.repr (Obj.obj (java_new "TouchJ2ME" (Obj.repr ()))));
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, commonStrings#cONSTRUCTOR));
        ignore (displayInfo#update (self, canvasStrings#cONSTRUCTOR));
        name <- name_arg;
        childNameList <- childNameList_arg;
        commandStack <- Obj.repr (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createStack ()))
      end
  end [@@warning "-20"]
let () = java_register_constructor "MyCanvas" (fun arguments -> Obj.repr (new myCanvas (Obj.obj arguments)))


