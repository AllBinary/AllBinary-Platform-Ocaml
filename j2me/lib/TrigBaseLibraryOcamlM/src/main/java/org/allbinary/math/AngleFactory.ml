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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

class angleFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tOTAL_ANGLE : int = 0
    method tOTAL_ANGLE = tOTAL_ANGLE
    method set_tOTAL_ANGLE value' = tOTAL_ANGLE <- value'
    val mutable qUARTER_TOTAL_ANGLE : int = 0
    method qUARTER_TOTAL_ANGLE = qUARTER_TOTAL_ANGLE
    method set_qUARTER_TOTAL_ANGLE value' = qUARTER_TOTAL_ANGLE <- value'
    val mutable angleArray : Angle.angle array = (Obj.magic 0)
    method angleArray = angleArray
    method set_angleArray value' = angleArray <- value'
    val mutable nEGATIVE_ONE : int = 0
    method nEGATIVE_ONE = nEGATIVE_ONE
    method set_nEGATIVE_ONE value' = nEGATIVE_ONE <- value'
    val mutable nOT_ANGLE : NamedAngle.namedAngle = (Obj.magic 0)
    method nOT_ANGLE = nOT_ANGLE
    method set_nOT_ANGLE value' = nOT_ANGLE <- value'
    val mutable dOWN : NamedAngle.namedAngle = (Obj.magic 0)
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    val mutable uP : NamedAngle.namedAngle = (Obj.magic 0)
    method uP = uP
    method set_uP value' = uP <- value'
    val mutable lEFT : NamedAngle.namedAngle = (Obj.magic 0)
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable rIGHT : NamedAngle.namedAngle = (Obj.magic 0)
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'
    val mutable frameUtil : FrameUtil.frameUtil = (Obj.magic 0)
    method frameUtil = frameUtil
    method set_frameUtil value' = frameUtil <- value'
    
    

    method getAt ((index : int)) : Angle.angle =
        begin
        let adjustedIndex : int ref = ref ((java_to_int (Obj.repr ((frameUtil#adjustAngleToFrameAngle (index)))))) in ();
        (angleArray.(!adjustedIndex) :> Angle.angle)
        end
    

    method getClosestDirection ((angle : int)) : Angle.angle =
        try
        begin
        if ((((angle >= 315) && (angle < 360))) || (((angle >= 0) && (angle < 45)))) then begin
            raise (Java_return (Obj.repr (uP)))
        end else if ((angle >= 45) && (angle < 135)) then begin
            raise (Java_return (Obj.repr (rIGHT)))
        end else if ((angle >= 135) && (angle < 225)) then begin
            raise (Java_return (Obj.repr (dOWN)))
        end else if ((angle >= 225) && (angle < 315)) then begin
            raise (Java_return (Obj.repr (lEFT)))
        end;
        raise (Failure ("RuntimeException"))
        end
        with Java_return value -> Obj.obj value
    

    method getGeneralDirection () : Angle.angle =
        begin
        (nOT_ANGLE :> Angle.angle)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tOTAL_ANGLE <- 360;
        qUARTER_TOTAL_ANGLE <- 90;
        angleArray <- (Array.make (tOTAL_ANGLE) (Obj.magic 0));
        nEGATIVE_ONE <- (-1);
        nOT_ANGLE <- ((new NamedAngle.namedAngle (nEGATIVE_ONE, (CommonStrings.getInstance ())#eMPTY)) :> NamedAngle.namedAngle);
        ();
        ();
        ();
        ();
        frameUtil <- ((FrameUtil.getInstance ()) :> FrameUtil.frameUtil);
        ();
        let commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings ref = ref (((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings)) in ();
        let total : int ref = ref ((Array.length angleArray)) in ();
        uP <- (new NamedAngle.namedAngle (0, !commonPhoneStrings#uP));
        angleArray.(0) <- (uP :> Angle.angle);
        for index = 1 to 90 - 1 do
            angleArray.(index) <- ((new Angle.angle (index)) :> Angle.angle)
        done;
        rIGHT <- (new NamedAngle.namedAngle (90, !commonPhoneStrings#rIGHT));
        angleArray.(90) <- (rIGHT :> Angle.angle);
        for index = 91 to 180 - 1 do
            angleArray.(index) <- ((new Angle.angle (index)) :> Angle.angle)
        done;
        dOWN <- (new NamedAngle.namedAngle (180, !commonPhoneStrings#dOWN));
        angleArray.(180) <- (dOWN :> Angle.angle);
        for index = 181 to 270 - 1 do
            angleArray.(index) <- ((new Angle.angle (index)) :> Angle.angle)
        done;
        lEFT <- (new NamedAngle.namedAngle (270, !commonPhoneStrings#lEFT));
        angleArray.(270) <- (lEFT :> Angle.angle);
        for index = 271 to !total - 1 do
            angleArray.(index) <- ((new Angle.angle (index)) :> Angle.angle)
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "AngleFactory" (fun arguments -> Obj.repr (new angleFactory (Obj.obj arguments)))

let instance = (new angleFactory ())
let get_instance () = instance
let () = java_register_static "AngleFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let angleFactory : Obj.t ref = ref ((Obj.repr (getInstance ()))) in ();
        for index = 0 to 360 - 1 do
            ignore ((((!stringMaker#appendint (index))#append ((CommonSeps.getInstance ())#fORWARD_SLASH))#appendshort ((java_to_int (Obj.repr ((((Obj.magic !angleFactory)#getClosestDirection (index))#getValue ()))))))#append ((CommonSeps.getInstance ())#nEW_LINE))
        done;
        ignore ((Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ())))#putF ((java_string_of (Obj.repr !stringMaker)), "main", "main"))
        end
let () = java_register_static "AngleFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "AngleFactory.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


