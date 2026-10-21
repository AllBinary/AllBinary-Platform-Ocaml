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
(* package org.allbinary.input.motion.gesture.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.CompleteMotionGestureInputEvent *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class motionGestureConfiguration () =
  object
    val mutable diagonalMotionGestureAllowed : bool = false
    method diagonalMotionGestureAllowed = diagonalMotionGestureAllowed
    method set_diagonalMotionGestureAllowed value' = diagonalMotionGestureAllowed <- value'
    val mutable diagonalTolerance : int = 0
    method diagonalTolerance = diagonalTolerance
    method set_diagonalTolerance value' = diagonalTolerance <- value'
    val mutable minimumMotionGesture : int = 0
    method minimumMotionGesture = minimumMotionGesture
    method set_minimumMotionGesture value' = minimumMotionGesture <- value'
    val mutable button : string = ""
    method button = button
    method set_button value' = button <- value'
    val mutable color : BasicColor.basicColor = (Obj.magic 0)
    method color = color
    method set_color value' = color <- value'
    val mutable executingActions : bool = false
    method executingActions = executingActions
    method set_executingActions value' = executingActions <- value'
    val mutable mouseButtonMask : int = 0
    method mouseButtonMask = mouseButtonMask
    method set_mouseButtonMask value' = mouseButtonMask <- value'
    val mutable activeCommands : BasicArrayList.basicArrayList = (Obj.magic 0)
    method activeCommands = activeCommands
    method set_activeCommands value' = activeCommands <- value'
    
    

    method addMotionGestureAction : 'any1 'any2. 'any1 * 'any2 -> unit = fun (list, commandAction) ->
        let list = Obj.repr list in
        let commandAction = Obj.repr commandAction in
        begin
        ignore (activeCommands#add ((new MotionGestureToMotionGestureActionAssociation.motionGestureToMotionGestureActionAssociation ((Obj.magic list), (Obj.magic commandAction)))))
        end [@@warning "-20"]
    

    method clearMotionGestureAction () : unit =
        begin
        ignore (activeCommands#clear ())
        end
    

    method getAssociateCommandActionsList () : BasicArrayList.basicArrayList =
        begin
        (activeCommands :> BasicArrayList.basicArrayList)
        end
    

    method isDiagonalMotionGestureAllowed () : bool =
        begin
        diagonalMotionGestureAllowed
        end
    

    method isExecutingActionsAllowed () : bool =
        begin
        executingActions
        end
    

    method setExecutingActionsAllowed ((executingActionAllowed : bool)) : unit =
        begin
        executingActions <- executingActionAllowed
        end
    

    method setDiagonalMotionGestureAllowed ((diagonalMotionGestureAllowed_arg : bool)) : unit =
        begin
        diagonalMotionGestureAllowed <- diagonalMotionGestureAllowed_arg
        end
    

    method getDiagonalTolerance () : int =
        begin
        diagonalTolerance
        end
    

    method setDiagonalTolerance ((diagonalTolerance_arg : int)) : unit =
        begin
        diagonalTolerance <- diagonalTolerance_arg
        end
    

    method getMinimumMotionGesture () : int =
        begin
        minimumMotionGesture
        end
    

    method setMinimumMotionGesture ((minimumMotionGesture_arg : int)) : unit =
        begin
        minimumMotionGesture <- minimumMotionGesture_arg
        end
    

    method getButton () : string =
        begin
        button
        end
    

    method setButton ((button_arg : string)) : unit =
        begin
        button <- button_arg
        end
    

    method getColor () : BasicColor.basicColor =
        begin
        (color :> BasicColor.basicColor)
        end
    

    method setColor : 'any1. 'any1 -> unit = fun (color_arg) ->
        let color_arg = Obj.repr color_arg in
        begin
        color <- (Obj.magic color_arg)
        end [@@warning "-20"]
    

    method getMouseButtonMask () : int =
        begin
        mouseButtonMask
        end
    

    method setMouseButtonMask ((mouseButtonMask_arg : int)) : unit =
        begin
        mouseButtonMask <- mouseButtonMask_arg
        end

    initializer
      begin
        diagonalMotionGestureAllowed <- true;
        diagonalTolerance <- 7;
        minimumMotionGesture <- 9;
        button <- (StringUtil.getInstance ())#eMPTY_STRING;
        color <- ((BasicColorFactory.getInstance ())#bLUE :> BasicColor.basicColor);
        executingActions <- true;
        mouseButtonMask <- 0;
        activeCommands <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "MotionGestureConfiguration" (fun arguments -> Obj.repr (new motionGestureConfiguration (Obj.obj arguments)))


