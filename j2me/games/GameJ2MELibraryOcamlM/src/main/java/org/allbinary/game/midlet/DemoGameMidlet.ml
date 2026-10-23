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
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.system.security.licensing.ClientInformationFactory *)
(* import org.allbinary.thread.PrimaryThreadPool *)
(* import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable *)
(* import org.allbinary.util.ABHashtable *)

class demoGameMidlet ((clientInformationFactory : ClientInformationFactory.clientInformationFactory)) =
  object (self)
    inherit GameMidlet.gameMidlet (clientInformationFactory)
    
    

    method isContinue () : bool =
        try
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr (self#getStartStateHashtable ()))) in ();
        if (((Obj.magic !hashtable) != (Obj.magic 0)) && (((Obj.magic !hashtable)#size ()) > 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getHighestLevel () : int =
        begin
        1
        end [@@warning "-7"]
    

    method createDemoGameCanvasRunnableInterface () : GameCanvasRunnableInterface.gameCanvasRunnableInterface =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#nOT_IMPLEMENTED, self, (self#commonStrings)#cREATE));
        ((NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ()) :> GameCanvasRunnableInterface.gameCanvasRunnableInterface)
        end [@@warning "-7"]
    

    method createGameCanvasRunnable : 'any1. 'any1 -> GameCanvasRunnableInterface.gameCanvasRunnableInterface = fun (_allBinaryGameLayerManager) ->
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]
    

    method createGameCanvasRunnableInterface () : GameCanvasRunnableInterface.gameCanvasRunnableInterface =
        begin
        ((self#createGameCanvasRunnable ((self#createGameLayerManager ()))) :> GameCanvasRunnableInterface.gameCanvasRunnableInterface)
        end [@@warning "-7"]
    

    method demoSetup () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method postDemoSetup () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setDemo () : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, "setDemo"));
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#start ());
        ignore ((PrimaryThreadPool.getInstance ())#runTask ((Obj.obj (java_new "DemoRunnable" (Obj.repr (self))))))
        end [@@warning "-7"]
    

    method createGame () : unit =
        begin
        let cREATE_GAME : string ref = ref ("createGame") in ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, !cREATE_GAME));
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#start ());
        let hashtable : Obj.t ref = ref ((Obj.repr (self#getStartStateHashtable ()))) in ();
        ignore (self#setStartStateHashtable ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE));
        ignore ((PrimaryThreadPool.getInstance ())#runTask ((Obj.obj (java_new "CreateGameRunnable" (Obj.repr (self, (Obj.magic !hashtable)))))));
        ignore ((self#logUtil)#putF ((self#commonStrings)#eND, self, !cREATE_GAME))
        end [@@warning "-7"]
    

    method isReady () : bool =
        begin
        true
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "DemoGameMidlet" (fun arguments -> Obj.repr (new demoGameMidlet (Obj.obj arguments)))


