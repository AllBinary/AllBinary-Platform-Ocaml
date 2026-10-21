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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

let aNGLE : string = "Angle: "
let get_aNGLE () = aNGLE
let () = java_register_static "AngleInfo.get_aNGLE" (fun _ -> Obj.repr (get_aNGLE ()))
class angleInfo ((angleIncrementInfo_arg : AngleIncrementInfo.angleIncrementInfo)) =
  object (self)
    val mutable angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo = (Obj.magic 0)
    method angleIncrementInfo = angleIncrementInfo
    method set_angleIncrementInfo value' = angleIncrementInfo <- value'
    val mutable angle : int = 0
    method angle = angle
    method set_angle value' = angle <- value'
    val mutable frameUtil : FrameUtil.frameUtil = (Obj.magic 0)
    method frameUtil = frameUtil
    method set_frameUtil value' = frameUtil <- value'
    
    

    method adjustAngle ((frame : int)) : unit =
        begin
        let newAngle : int ref = ref ((((angleIncrementInfo#getAngleIncrement ()) * frame) - 90)) in ();
        (self#setAngle ((java_to_int (Obj.repr ((frameUtil#adjustAngleToFrameAngle (!newAngle)))))))
        end
    

    method getAngle () : int =
        begin
        angle
        end
    

    method setAngle ((angle_arg : int)) : unit =
        begin
        angle <- angle_arg
        end
    

    method getAngleIncrementInfo () : AngleIncrementInfo.angleIncrementInfo =
        begin
        (angleIncrementInfo :> AngleIncrementInfo.angleIncrementInfo)
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (aNGLE));
        ignore (!stringBuffer#appendshort (angle));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((self#getAngleIncrementInfo ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        angle <- 0;
        frameUtil <- ((FrameUtil.getInstance ()) :> FrameUtil.frameUtil);
        ();
        angleIncrementInfo <- angleIncrementInfo_arg
      end
  end
let () = java_register_constructor "AngleInfo" (fun arguments -> Obj.repr (new angleInfo (Obj.obj arguments)))

let getInstance ((angleIncrement : int)) =
        begin
        (new angleInfo (((AngleIncrementInfoFactory.getInstance ())#getAt (angleIncrement))))
        end
let () = java_register_static "AngleInfo.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


