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
(* package org.allbinary.game.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.StatePaintable *)

class basicGameDemoPaintable ((mainDemoStatePaintable_arg : Paintable.paintable), (ownershipPaintable_arg : Paintable.paintable), (helpPaintableInterface_arg : Paintable.paintable)) =
  object (self)
    inherit StatePaintable.statePaintable ()
    val mutable mainDemoStatePaintable : Paintable.paintable = (Obj.magic 0)
    method mainDemoStatePaintable = mainDemoStatePaintable
    method set_mainDemoStatePaintable value' = mainDemoStatePaintable <- value'
    val mutable ownershipPaintable : Paintable.paintable = (Obj.magic 0)
    method ownershipPaintable = ownershipPaintable
    method set_ownershipPaintable value' = ownershipPaintable <- value'
    val mutable helpPaintableInterface : Paintable.paintable = (Obj.magic 0)
    method helpPaintableInterface = helpPaintableInterface
    method set_helpPaintableInterface value' = helpPaintableInterface <- value'
    val mutable currentStatePaintable : Paintable.paintable = (Obj.magic 0)
    method currentStatePaintable = currentStatePaintable
    method set_currentStatePaintable value' = currentStatePaintable <- value'
    
    

    method setState ((state : int)) : unit =
        begin
        if (state = 0) then begin
            (self#setCurrentStatePaintable ((self#getMainDemoStatePaintable ())))
        end else if (state = 1) then begin
            (self#setCurrentStatePaintable (helpPaintableInterface))
        end else begin
            (self#setCurrentStatePaintable (ownershipPaintable))
        end
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#getCurrentStatePaintable ())#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method getHelpPaintableInterface () : Paintable.paintable =
        begin
        (helpPaintableInterface :> Paintable.paintable)
        end [@@warning "-7"]
    

    method setCurrentStatePaintable : 'any1. 'any1 -> unit = fun (currentStatePaintable_arg) ->
        let currentStatePaintable_arg = Obj.repr currentStatePaintable_arg in
        begin
        currentStatePaintable <- (Obj.magic currentStatePaintable_arg)
        end [@@warning "-7-20"]
    

    method getCurrentStatePaintable () : Paintable.paintable =
        begin
        (currentStatePaintable :> Paintable.paintable)
        end [@@warning "-7"]
    

    method getMainDemoStatePaintable () : Paintable.paintable =
        begin
        (mainDemoStatePaintable :> Paintable.paintable)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        currentStatePaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        ();
        mainDemoStatePaintable <- mainDemoStatePaintable_arg;
        (self#setCurrentStatePaintable ((NullPaintable.getInstance ())));
        ownershipPaintable <- ownershipPaintable_arg;
        helpPaintableInterface <- helpPaintableInterface_arg
      end
  end
let () = java_register_constructor "BasicGameDemoPaintable" (fun arguments -> Obj.repr (new basicGameDemoPaintable (Obj.obj arguments)))


