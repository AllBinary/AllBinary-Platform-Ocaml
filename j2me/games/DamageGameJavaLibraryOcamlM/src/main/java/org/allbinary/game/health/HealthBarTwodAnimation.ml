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
(* package org.allbinary.game.health *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.layer.AllBinaryLayer *)

class healthBarTwodAnimation ((layerInterface : AllBinaryLayer.allBinaryLayer), (location : int)) =
  object (self)
    inherit HealthBarAnimation.healthBarAnimation (layerInterface, location)
    
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (_x : int), (_y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let ax : int ref = ref ((((self#allbinaryLayer)#getViewPosition ())#getX ())) in ();
        ignore ((self#basicSetColorUtil)#setBasicColorP3 ((Obj.magic graphics), (self#basicColor), (self#colorP)));
        ignore ((Obj.magic graphics)#fillRect (!ax, ((self#getY ()) - 1), (self#x2), (self#thickness)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "HealthBarTwodAnimation" (fun arguments -> Obj.repr (new healthBarTwodAnimation (Obj.obj arguments)))


