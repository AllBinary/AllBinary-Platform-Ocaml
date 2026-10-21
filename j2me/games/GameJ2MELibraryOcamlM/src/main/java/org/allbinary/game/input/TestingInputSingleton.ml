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
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.layer.AllBinaryGameLayer *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.view.ViewPosition *)

class testingInputSingleton () =
  object (self)
    inherit AllBinaryGameLayer.allBinaryGameLayer ((StringUtil.getInstance ())#eMPTY_STRING, (RectangleFactory.get_sINGLETON ()), (ViewPosition.getInstanceD ()))
    val mutable inputProcessorArray : GameInputProcessor.gameInputProcessor array = (Obj.magic 0)
    method inputProcessorArray = inputProcessorArray
    method set_inputProcessorArray value' = inputProcessorArray <- value'
    val mutable paintable : PaintableInterface.paintableInterface = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    
    

    method initInputProcessors () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method initInputProcessorsForTestInput : 'any1. 'any1 -> unit = fun (aTestInputInterface) ->
        let aTestInputInterface = Obj.repr aTestInputInterface in
        begin
        let testInputInterface : TestInputInterface.testInputInterface ref = ref (((Obj.magic aTestInputInterface) :> TestInputInterface.testInputInterface)) in ();
        paintable <- !testInputInterface;
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) <- ((object (self)
            inherit GameInputProcessor.gameInputProcessor () as super
            

            method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
                begin
                ignore (!testInputInterface#up ())
                end [@@warning "-20"]
        end) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) <- ((object (self)
            inherit GameInputProcessor.gameInputProcessor () as super
            

            method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
                begin
                ignore (!testInputInterface#down ())
                end [@@warning "-20"]
        end) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) <- ((object (self)
            inherit GameInputProcessor.gameInputProcessor () as super
            

            method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
                begin
                ignore (!testInputInterface#left ())
                end [@@warning "-20"]
        end) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) <- ((object (self)
            inherit GameInputProcessor.gameInputProcessor () as super
            

            method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
                begin
                ignore (!testInputInterface#right ())
                end [@@warning "-20"]
        end) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ())))) <- ((object (self)
            inherit GameInputProcessor.gameInputProcessor () as super
            

            method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
                begin
                ignore (!testInputInterface#strafeLeft ())
                end [@@warning "-20"]
        end) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ())))) <- ((object (self)
            inherit GameInputProcessor.gameInputProcessor () as super
            

            method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
                begin
                ignore (!testInputInterface#strafeRight ())
                end [@@warning "-20"]
        end) :> GameInputProcessor.gameInputProcessor);
        ignore (GameInputProcessorUtil.init (inputProcessorArray))
        end [@@warning "-7-20"]
    

    method processInputList : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allbinaryLayerManager, list) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let list = Obj.repr list in
        begin
        let key : int ref = ref (0) in ();
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic 0) :> GameKeyEvent.gameKeyEvent)) in ();
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            gameKeyEvent := ((Obj.magic (Obj.magic list)#objectArray.(index)));
            key := (!gameKeyEvent#getKey ());
            ignore (inputProcessorArray.(!key)#processEvent ((Obj.magic allbinaryLayerManager), (GameKeyEvent.get_nONE ())))
        done
        end [@@warning "-7-20"]
    

    method processInput : 'any1. 'any1 -> unit = fun (allbinaryLayerManager) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        begin
        (self#processInputList ((Obj.magic allbinaryLayerManager), (self#getGameKeyEventList ())));
        ignore ((self#getGameKeyEventList ())#clear ())
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (paintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method implmentsGameInputInterface () : bool =
        begin
        true
        end [@@warning "-7"]

    initializer
      begin
        inputProcessorArray <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        paintable <- ((NullPaintable.getInstance ()) :> PaintableInterface.paintableInterface);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (GameInputProcessorUtil.init (inputProcessorArray))
      end
  end
let () = java_register_constructor "TestingInputSingleton" (fun arguments -> Obj.repr (new testingInputSingleton (Obj.obj arguments)))

let instance = (new testingInputSingleton ())
let get_instance () = instance
let () = java_register_static "TestingInputSingleton.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TestingInputSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


