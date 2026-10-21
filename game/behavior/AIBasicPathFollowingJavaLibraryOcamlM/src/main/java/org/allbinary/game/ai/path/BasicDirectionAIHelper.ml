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
(* package org.allbinary.game.ai.path *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.math.AngleIncrementInfo *)
(* import org.allbinary.math.AngleInfo *)

class basicDirectionAIHelper ((name_arg : string), (angleInfo_arg : AngleInfo.angleInfo)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable angleInfo : AngleInfo.angleInfo = (Obj.magic 0)
    method angleInfo = angleInfo
    method set_angleInfo value' = angleInfo <- value'
    
    

    method turnAI ((frame : int)) : int =
        begin
        let keyDirection : int ref = ref ((-1)) in ();
        let directionAngle : int ref = ref (((angleInfo#getAngleIncrementInfo ())#getFrameAngle (frame))) in ();
        let angle : int ref = ref ((angleInfo#getAngle ())) in ();
        let degrees : int ref = ref ((abs ((!directionAngle - !angle)))) in ();
        if (!degrees < 180) then begin
            if (!angle > !directionAngle) then begin
                keyDirection := (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))
            end else if (!angle < !directionAngle) then begin
                keyDirection := (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))
            end
        end else begin
            if (!angle > !directionAngle) then begin
                keyDirection := (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))
            end else if (!angle < !directionAngle) then begin
                keyDirection := (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))
            end
        end;
        !keyDirection
        end
    

    method getAIKeyPressed ((frame : int)) : int =
        try
        begin
        let angle : int ref = ref ((java_to_int (Obj.repr (((angleInfo#getAngleIncrementInfo ())#getFrameAngle ((frame#intValue ()))))))) in ();
        if ((angleInfo#getAngle ()) != !angle) then begin
            raise (Java_return (Obj.repr ((self#turnAI ((frame#intValue ()))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getAIKeyPressedFromDirection : 'any1. 'any1 -> int = fun (geographicMapDirectionData) ->
        let geographicMapDirectionData = Obj.repr geographicMapDirectionData in
        begin
        let keyDirection : int ref = ref ((-1)) in ();
        let angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo ref = ref (((angleInfo#getAngleIncrementInfo ()) :> AngleIncrementInfo.angleIncrementInfo)) in ();
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        if ((Obj.repr (Obj.magic geographicMapDirectionData)) == (Obj.repr !directionFactory#dOWN)) then begin
            keyDirection := (self#getAIKeyPressed (!angleIncrementInfo#dOWN_FRAME))
        end else if ((Obj.repr (Obj.magic geographicMapDirectionData)) == (Obj.repr !directionFactory#uP)) then begin
            keyDirection := (self#getAIKeyPressed (!angleIncrementInfo#uP_FRAME))
        end else if ((Obj.repr (Obj.magic geographicMapDirectionData)) == (Obj.repr !directionFactory#lEFT)) then begin
            keyDirection := (self#getAIKeyPressed (!angleIncrementInfo#lEFT_FRAME))
        end else if ((Obj.repr (Obj.magic geographicMapDirectionData)) == (Obj.repr !directionFactory#rIGHT)) then begin
            keyDirection := (self#getAIKeyPressed (!angleIncrementInfo#rIGHT_FRAME))
        end;
        !keyDirection
        end [@@warning "-20"]
    

    method getAngleInfoP () : AngleInfo.angleInfo =
        begin
        (angleInfo :> AngleInfo.angleInfo)
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        ();
        name <- name_arg;
        angleInfo <- angleInfo_arg
      end
  end
let () = java_register_constructor "BasicDirectionAIHelper" (fun arguments -> Obj.repr (new basicDirectionAIHelper (Obj.obj arguments)))


