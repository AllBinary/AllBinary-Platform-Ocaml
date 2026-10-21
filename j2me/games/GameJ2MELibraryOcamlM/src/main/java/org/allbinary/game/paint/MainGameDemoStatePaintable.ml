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
(* import org.allbinary.graphics.paint.Paintable *)

class mainGameDemoStatePaintable ((ownershipPaintableInterface_arg : Paintable.paintable), (menuPaintableInterface_arg : Paintable.paintable)) =
  object
    inherit Paintable.paintable ()
    val mutable ownershipPaintableInterface : Paintable.paintable = (Obj.magic 0)
    method ownershipPaintableInterface = ownershipPaintableInterface
    method set_ownershipPaintableInterface value' = ownershipPaintableInterface <- value'
    val mutable menuPaintableInterface : Paintable.paintable = (Obj.magic 0)
    method menuPaintableInterface = menuPaintableInterface
    method set_menuPaintableInterface value' = menuPaintableInterface <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (menuPaintableInterface#paint ((Obj.magic graphics)));
        ignore (ownershipPaintableInterface#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method getOwnershipPaintableInterface () : Paintable.paintable =
        begin
        (ownershipPaintableInterface :> Paintable.paintable)
        end [@@warning "-7"]
    

    method getMenuPaintableInterface () : Paintable.paintable =
        begin
        (menuPaintableInterface :> Paintable.paintable)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ownershipPaintableInterface <- ownershipPaintableInterface_arg;
        menuPaintableInterface <- menuPaintableInterface_arg
      end
  end
let () = java_register_constructor "MainGameDemoStatePaintable" (fun arguments -> Obj.repr (new mainGameDemoStatePaintable (Obj.obj arguments)))


