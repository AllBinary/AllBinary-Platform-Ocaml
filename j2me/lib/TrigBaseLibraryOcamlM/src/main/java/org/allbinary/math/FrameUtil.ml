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
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

class frameUtil () =
  object (self)
    
    

    method getFrameForAngle ((angle : int), (angleIncrement : int)) : int =
        begin
        ((self#adjustAngleToFrameAngle (angle)) / angleIncrement)
        end
    

    method getFrameAngle ((frame : int), (angleIncrement : int)) : int =
        begin
        let frameAngle : int ref = ref (((angleIncrement * frame) - 90)) in ();
        (self#adjustAngleToFrameAngle (!frameAngle))
        end
    

    method adjustAngleToFrameAngle ((currentAngle : int)) : int =
        let currentAngle = ref currentAngle in
        begin
        let angleFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AngleFactory.getInstance" (Obj.repr ()))))) in ();
        if (!currentAngle > 359) then begin
            currentAngle := ((!currentAngle - (Obj.magic !angleFactory)#tOTAL_ANGLE));
            while (!currentAngle > 359) do
                currentAngle := ((!currentAngle - (Obj.magic !angleFactory)#tOTAL_ANGLE))
            done
        end;
        if (!currentAngle < 0) then begin
            currentAngle := ((!currentAngle + (Obj.magic !angleFactory)#tOTAL_ANGLE));
            while (!currentAngle < 0) do
                currentAngle := ((!currentAngle + (Obj.magic !angleFactory)#tOTAL_ANGLE))
            done
        end;
        !currentAngle
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FrameUtil" (fun arguments -> Obj.repr (new frameUtil (Obj.obj arguments)))

let instance = (new frameUtil ())
let get_instance () = instance
let () = java_register_static "FrameUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FrameUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


