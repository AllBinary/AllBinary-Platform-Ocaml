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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)

class fullTouchButton ((touchButtonInput : TouchButtonInput.touchButtonInput), animationInterface, hintAnimationInterface, rawRectangle, (cellPosition : CellPosition.cellPosition), (xBorder : int), (yBorder : int)) =
  object (self)
    inherit TouchButton.touchButton (touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    
    

    method updateRectangle () : unit =
        begin
        (try
            let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
            let x : int ref = ref ((((self#rawRectangle)#getWidth ()) * ((self#cellPositionP)#getColumn ()))) in ();
            let y : int ref = ref ((((self#rawRectangle)#getHeight ()) * ((self#cellPositionP)#getRow ()))) in ();
            (self#set_rectangleP) ((Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic !pointFactory)#createXY (!x, !y)), (((self#rawRectangle)#getWidth ()) + ((2 * (self#xBorder)))), (((self#rawRectangle)#getHeight ()) + ((2 * (self#yBorder)))))))));
            let point : GPoint.gPoint ref = ref ((((self#rectangleP)#getPoint ()) :> GPoint.gPoint)) in ();
            (self#set_animationX) (((!point#getX ()) + (self#xBorder)));
            (self#set_animationY) (((!point#getY ()) + (self#yBorder)));
            (self#set_hintAnimationY) ((((self#animationY) - ((self#rectangleP)#getHeight ())) asr 1))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "updateRectangle", e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "FullTouchButton" (fun arguments -> Obj.repr (new fullTouchButton (Obj.obj arguments)))

let createButton : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int * int -> _ = fun (touchButtonInput, touchButtonResource, rawRectangle, cellPosition, (xBorder : int), (yBorder : int)) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        let touchButtonResource = Obj.repr touchButtonResource in
        let rawRectangle = Obj.repr rawRectangle in
        let cellPosition = Obj.repr cellPosition in
        begin
        (new fullTouchButton ((Obj.magic touchButtonInput), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((Obj.magic touchButtonResource)#rESOURCE))#getInstance (0)), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((Obj.magic touchButtonResource)#hINT))#getInstance (0)), (Obj.magic rawRectangle), (Obj.magic cellPosition), xBorder, yBorder))
        end [@@warning "-20"]
let () = java_register_static "FullTouchButton.createButton" (fun arguments -> Obj.repr (createButton (Obj.obj arguments)))


