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
(* package org.allbinary.media.image.comparison.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Rectangle *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let nAME : string = "constrainedMotionRectangles_"
let get_nAME () = nAME
let () = java_register_static "ConstrainedMotionRectangles.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class constrainedMotionRectangles ((motionRectangleConstraintsInterface_arg : MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface), (motionRectangles : MotionRectangles.motionRectangles)) =
  object (self)
    inherit MotionRectangles.motionRectangles (nAME, (motionRectangles#getImageComparisonResult ()))
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface = (Obj.magic 0)
    method motionRectangleConstraintsInterface = motionRectangleConstraintsInterface
    method set_motionRectangleConstraintsInterface value' = motionRectangleConstraintsInterface <- value'
    
    

    method applyMotionRectangleConstraints : 'any1. 'any1 -> unit = fun (motionRectangles) ->
        let motionRectangles = Obj.repr motionRectangles in
        begin
        ignore ((Obj.magic logUtil)#putF (("Start - Size Before: " ^ java_string_of (Obj.repr ((((Obj.magic motionRectangles)#getVector ())#size ())))), self, "applyMotionRectangleConstraints"));
        let bufferedImageArray : Obj.t ref = ref ((Obj.repr (((Obj.magic motionRectangles)#getImageComparisonResult ())#getBufferedImages ()))) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr (Obj.magic !bufferedImageArray).(1))) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let vector2 : BasicArrayList.basicArrayList ref = ref ((((Obj.magic motionRectangles)#getVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector2#size ())) in ();
        for index = 0 to !size - 1 do
            (try
            let motionRectangle : MotionRectangle.motionRectangle ref = ref (((Obj.magic (!vector2#get (index))) :> MotionRectangle.motionRectangle)) in ();
            let rectangle : Obj.t ref = ref ((Obj.repr (!motionRectangle#getRectangle ()))) in ();
            let isTooSmall : bool ref = ref (((self#getMotionRectangleConstraintsInterface ())#isTooSmall ((Obj.magic !rectangle)))) in ();
            if !isTooSmall then begin
                raise Java_continue
            end;
            let isAreaTooSmall : bool ref = ref (((self#getMotionRectangleConstraintsInterface ())#isAreaTooSmall ((Obj.magic !rectangle)))) in ();
            if !isAreaTooSmall then begin
                raise Java_continue
            end;
            let isTooBig : bool ref = ref (((self#getMotionRectangleConstraintsInterface ())#isTooBig ((Obj.magic !rectangle)))) in ();
            if !isTooBig then begin
                raise Java_continue
            end;
            let isValid : bool ref = ref (((self#getMotionRectangleConstraintsInterface ())#isValid (((self#getImageComparisonResult ())#getFrameTwo ()), (Obj.magic !bufferedImage), (!motionRectangle#getRectangle ())))) in ();
            if (not !isValid) then begin
                raise Java_continue
            end;
            if ((((not !isTooSmall) && (not !isAreaTooSmall)) && (not !isTooBig)) && !isValid) then begin
                ignore (!vector#add (!motionRectangle))
            end
            with Java_continue -> ())
        done;
        ignore (self#setVector (!vector))
        end [@@warning "-7-20"]
    

    method getMotionRectangleConstraintsInterface () : MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface =
        begin
        (motionRectangleConstraintsInterface :> MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface)
        end [@@warning "-7"]
    

    method setMotionRectangleConstraintsInterface : 'any1. 'any1 -> unit = fun (motionRectangleConstraintsInterface_arg) ->
        let motionRectangleConstraintsInterface_arg = Obj.repr motionRectangleConstraintsInterface_arg in
        begin
        motionRectangleConstraintsInterface <- (Obj.magic motionRectangleConstraintsInterface_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        motionRectangleConstraintsInterface <- ((Obj.magic 0) :> MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setMotionRectangleConstraintsInterface (motionRectangleConstraintsInterface_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ConstrainedMotionRectangles" (fun arguments -> Obj.repr (new constrainedMotionRectangles (Obj.obj arguments)))


