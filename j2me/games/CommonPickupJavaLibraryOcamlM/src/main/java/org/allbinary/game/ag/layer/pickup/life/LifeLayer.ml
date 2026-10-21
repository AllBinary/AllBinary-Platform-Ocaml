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
(* package org.allbinary.game.ag.layer.pickup.life *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.ag.life.Life *)
(* import org.allbinary.game.ag.life.LifeVisitorInterface *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.view.ViewPosition *)

class lifeLayer () =
  object
    inherit AllBinaryLayer.allBinaryLayer ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 0, 0)))), (ViewPosition.getInstanceD ()))
    
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method visit : 'any1. 'any1 -> unit = fun (lifeInterface) ->
        let lifeInterface = Obj.repr lifeInterface in
        begin
        ignore ((Obj.magic lifeInterface)#add (1))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "LifeLayer" (fun arguments -> Obj.repr (new lifeLayer (Obj.obj arguments)))


