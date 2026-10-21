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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import jsinterop.annotations.JsProperty *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

let iNCREMENT : string = "Inc: "
let get_iNCREMENT () = iNCREMENT
let () = java_register_static "AngleIncrementInfo.get_iNCREMENT" (fun _ -> Obj.repr (get_iNCREMENT ()))
class angleIncrementInfo ((angleIncrement_arg : int)) =
  object
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    val mutable dOWN_FRAME : int = (Obj.magic 0)
    method dOWN_FRAME = dOWN_FRAME
    method set_dOWN_FRAME value' = dOWN_FRAME <- value'
    val mutable uP_FRAME : int = (Obj.magic 0)
    method uP_FRAME = uP_FRAME
    method set_uP_FRAME value' = uP_FRAME <- value'
    val mutable lEFT_FRAME : int = (Obj.magic 0)
    method lEFT_FRAME = lEFT_FRAME
    method set_lEFT_FRAME value' = lEFT_FRAME <- value'
    val mutable rIGHT_FRAME : int = (Obj.magic 0)
    method rIGHT_FRAME = rIGHT_FRAME
    method set_rIGHT_FRAME value' = rIGHT_FRAME <- value'
    val mutable frameUtil : FrameUtil.frameUtil = (Obj.magic 0)
    method frameUtil = frameUtil
    method set_frameUtil value' = frameUtil <- value'
    
    

    method getFrameAngle ((frame : int)) : int =
        begin
        (frameUtil#getFrameAngle (frame, angleIncrement))
        end
    

    method getAngleIncrement () : int =
        begin
        angleIncrement
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (iNCREMENT))#appendshort (angleIncrement))))
        end
    

    method getClosestGeneralDirection ((angle : int)) : int =
        begin
        let closestDirection : int ref = ref (((SmallIntegerSingletonFactory.getInstance ())#getAt (360))) in ();
        if ((uP_FRAME - angle) < (!closestDirection - angle)) then begin
            closestDirection := uP_FRAME
        end;
        if ((dOWN_FRAME - angle) < (!closestDirection - angle)) then begin
            closestDirection := dOWN_FRAME
        end;
        if ((lEFT_FRAME - angle) < (!closestDirection - angle)) then begin
            closestDirection := lEFT_FRAME
        end;
        if ((rIGHT_FRAME - angle) < (!closestDirection - angle)) then begin
            closestDirection := rIGHT_FRAME
        end;
        !closestDirection
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        frameUtil <- ((FrameUtil.getInstance ()) :> FrameUtil.frameUtil);
        ();
        angleIncrement <- angleIncrement_arg;
        let angleFactory : AngleFactory.angleFactory ref = ref (((AngleFactory.getInstance ()) :> AngleFactory.angleFactory)) in ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        dOWN_FRAME <- (!smallIntegerSingletonFactory#getAt (((!angleFactory#dOWN#getValue ()) / angleIncrement)));
        uP_FRAME <- (!smallIntegerSingletonFactory#getAt ((java_to_int (Obj.repr ((!angleFactory#uP#getValue ()))))));
        lEFT_FRAME <- (!smallIntegerSingletonFactory#getAt (((!angleFactory#lEFT#getValue ()) / angleIncrement)));
        rIGHT_FRAME <- (!smallIntegerSingletonFactory#getAt (((!angleFactory#rIGHT#getValue ()) / angleIncrement)))
      end
  end
let () = java_register_constructor "AngleIncrementInfo" (fun arguments -> Obj.repr (new angleIncrementInfo (Obj.obj arguments)))


