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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class line ((p1_arg : GPoint.gPoint), (p2_arg : GPoint.gPoint)) =
  object (self)
    val mutable p1 : GPoint.gPoint = (Obj.magic 0)
    method p1 = p1
    method set_p1 value' = p1 <- value'
    val mutable p2 : GPoint.gPoint = (Obj.magic 0)
    method p2 = p2
    method set_p2 value' = p2 <- value'
    val mutable deltaX : float = 0.0
    method deltaX = deltaX
    method set_deltaX value' = deltaX <- value'
    val mutable deltaY : float = 0.0
    method deltaY = deltaY
    method set_deltaY value' = deltaY <- value'
    
    

    method getGradient () : float =
        begin
        ((self#getDeltaY ()) /. (self#getDeltaX ()))
        end
    

    method update () : unit =
        begin
        deltaX <- ((java_to_float (Obj.repr (((self#getP1 ())#getX ())))) -. ((self#getP2 ())#getX ()));
        deltaY <- ((java_to_float (Obj.repr (((self#getP1 ())#getY ())))) -. ((self#getP2 ())#getY ()))
        end
    

    method getDeltaX () : float =
        begin
        deltaX
        end
    

    method getDeltaY () : float =
        begin
        deltaY
        end
    

    method getP1 () : GPoint.gPoint =
        begin
        (p1 :> GPoint.gPoint)
        end
    

    method getP2 () : GPoint.gPoint =
        begin
        (p2 :> GPoint.gPoint)
        end
    

    method setP1 : 'any1. 'any1 -> unit = fun (p1_arg) ->
        let p1_arg = Obj.repr p1_arg in
        begin
        p1 <- (Obj.magic p1_arg);
        (self#update ())
        end [@@warning "-20"]
    

    method setP2 : 'any1. 'any1 -> unit = fun (p2_arg) ->
        let p2_arg = Obj.repr p2_arg in
        begin
        p2 <- (Obj.magic p2_arg);
        (self#update ())
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        deltaX <- 0.0;
        deltaY <- 0.0;
        ();
        p1 <- (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO;
        p2 <- p1;
        (self#setP1 (p1_arg));
        (self#setP2 (p2_arg))
      end
  end
let () = java_register_constructor "Line" (fun arguments -> Obj.repr (new line (Obj.obj arguments)))


