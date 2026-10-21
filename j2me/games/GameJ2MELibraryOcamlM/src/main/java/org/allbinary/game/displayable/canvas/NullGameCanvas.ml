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
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.NullCommandListener *)
(* import org.allbinary.game.init.BasicBuildGameInitializerFactory *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.score.NoHighScoresFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "NullGameCanvas.get_instance" (fun _ -> Obj.repr (get_instance ()))
let nO_GAME : string = "No Background Game"
let get_nO_GAME () = nO_GAME
let () = java_register_static "NullGameCanvas.get_nO_GAME" (fun _ -> Obj.repr (get_nO_GAME ()))
let tYPE : int = 1
let get_tYPE () = tYPE
let () = java_register_static "NullGameCanvas.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
class nullGameCanvas ((gameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager)) =
  object (self)
    inherit AllBinaryGameCanvas.allBinaryGameCanvas ((NullCommandListener.get_nULL_COMMAND_LISTENER ()), gameLayerManager, (NoHighScoresFactory.getInstance ()), (BasicBuildGameInitializerFactory.get_nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY ()), false) as super
    val mutable runningNull : bool = false
    method runningNull = runningNull
    method set_runningNull value' = runningNull <- value'
    
    

    method isGameOver () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method setRunning ((running : bool)) : unit =
        begin
        runningNull <- running
        end [@@warning "-7"]
    

    method isRunning () : bool =
        begin
        runningNull
        end [@@warning "-7"]
    

    method pause () : unit =
        begin
        ignore (self#setPaused (true))
        end [@@warning "-7"]
    

    method unPause () : unit =
        begin
        ignore (self#setPaused (false))
        end [@@warning "-7"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method buildGameInit ((_isProgress : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method draw : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method run () : unit =
        begin
        (try
            ignore (logUtil#putF (commonStrings#sTART_RUNNABLE, self, commonStrings#rUN));
            ignore (logUtil#putF (commonStrings#eND_RUNNABLE, self, commonStrings#rUN))
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end [@@warning "-7"]
    

    method getType () : int =
        begin
        tYPE
        end [@@warning "-7"]

    initializer
      begin
        runningNull <- true;
        ();
        (* super(...) is the inherit clause *) ();
        ignore (super#setWait (1200))
      end
  end
let () = java_register_constructor "NullGameCanvas" (fun arguments -> Obj.repr (new nullGameCanvas (Obj.obj arguments)))

let rec createNull () =
        begin
        (try
            (new nullGameCanvas ((AllBinaryGameLayerManager.getNullInstance ())))
        with e -> begin
            ignore ((Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ())))#put ((CommonStrings.getInstance ())#eXCEPTION, "NullGameCanvas", (CommonStrings.getInstance ())#gET_INSTANCE, e));
            raise (Failure ("RuntimeException"))
        end)
        end

and getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (createNull ())
        end;
        (Obj.magic !instance)
        end

and createCanvas : 'any1. 'any1 -> _ = fun (gameLayerManager) ->
        let gameLayerManager = Obj.repr gameLayerManager in
        begin
        let nullGameCanvas : Obj.t ref = ref ((Obj.repr (new nullGameCanvas ((Obj.magic gameLayerManager))))) in ();
        ignore ((Obj.magic !nullGameCanvas)#setInitialized (true));
        ignore ((Obj.magic !nullGameCanvas)#setTitle (nO_GAME));
        (Obj.magic !nullGameCanvas)
        end [@@warning "-20"]
let () = java_register_static "NullGameCanvas.createNull" (fun arguments -> Obj.repr (createNull (Obj.obj arguments)))
let () = java_register_static "NullGameCanvas.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "NullGameCanvas.createCanvas" (fun arguments -> Obj.repr (createCanvas (Obj.obj arguments)))


