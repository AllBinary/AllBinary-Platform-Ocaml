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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Color *)
(* import java.awt.Rectangle *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.collision.RectangleCollisionUtil *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface *)

class imageComparatorConstraints ((doImageComparisonEveryNthFrame_arg : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable avoidVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method avoidVector = avoidVector
    method set_avoidVector value' = avoidVector <- value'
    val mutable maxNonMatchingPixelDeltas : int = 0
    method maxNonMatchingPixelDeltas = maxNonMatchingPixelDeltas
    method set_maxNonMatchingPixelDeltas value' = maxNonMatchingPixelDeltas <- value'
    val mutable doImageComparisonEveryNthFrame : int = 0
    method doImageComparisonEveryNthFrame = doImageComparisonEveryNthFrame
    method set_doImageComparisonEveryNthFrame value' = doImageComparisonEveryNthFrame <- value'
    
    

    method getAvoidVector () : BasicArrayList.basicArrayList =
        begin
        (avoidVector :> BasicArrayList.basicArrayList)
        end
    

    method isColorAllowed : 'any2 'any3. int * 'any2 * 'any3 -> bool = fun ((_frame : int), _point, _color) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method isCollisionWithAvoidRectangles : 'any1. 'any1 -> bool = fun (rectangle) ->
        let rectangle = Obj.repr rectangle in
        begin
        let isCollsionWithAvoidRectangles : bool ref = ref (false) in ();
        let avoidVector_arg : BasicArrayList.basicArrayList ref = ref (((self#getAvoidVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!avoidVector_arg#size ())) in ();
        for index = 0 to !size - 1 do
            let avoidRectangle : Obj.t ref = ref ((Obj.repr (Obj.magic (!avoidVector_arg#get (index))))) in ();
            if (Obj.magic (java_call_static "RectangleCollisionUtil.isCollision" (Obj.repr ((Obj.magic !avoidRectangle), (Obj.magic rectangle))))) then begin
                isCollsionWithAvoidRectangles := true
            end
        done;
        !isCollsionWithAvoidRectangles
        end [@@warning "-20"]
    

    (* Java overload isCollisionWithAvoidRectangles(GPoint) is not converted: OCaml has one method per name *)
    

    method setAvoidVector : 'any1. 'any1 -> unit = fun (avoidVector_arg) ->
        let avoidVector_arg = Obj.repr avoidVector_arg in
        begin
        avoidVector <- (Obj.magic avoidVector_arg)
        end [@@warning "-20"]
    

    method getMaxNonMatchingPixelDeltas () : int =
        begin
        maxNonMatchingPixelDeltas
        end
    

    method setMaxNonMatchingPixelDeltas ((maxNonMatchingPixelDeltas_arg : int)) : unit =
        begin
        maxNonMatchingPixelDeltas <- maxNonMatchingPixelDeltas_arg
        end
    

    method isFrameAllowed ((frame : int)) : bool =
        try
        begin
        let remainder : int ref = ref (((((frame + 1)) mod doImageComparisonEveryNthFrame))) in ();
        ignore ((Obj.magic logUtil)#putF ((((((" Frame: " ^ java_string_of (Obj.repr (frame))) ^ " remainder: ") ^ java_string_of (Obj.repr (!remainder))) ^ " this.doImageComparisonEveryNthFrame: ") ^ java_string_of (Obj.repr (doImageComparisonEveryNthFrame))), self, "isCollisionWithAvoidRectangles"));
        if (!remainder = 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isImageValid : 'any1. 'any1 -> bool = fun (_bufferedImage) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method log () : unit =
        begin
        let avoidVector_arg : BasicArrayList.basicArrayList ref = ref (((self#getAvoidVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!avoidVector_arg#size ())) in ();
        for index = 0 to !size - 1 do
            let avoidRectangle : Obj.t ref = ref ((Obj.repr (Obj.magic (!avoidVector_arg#get (index))))) in ();
            ignore ((Obj.magic logUtil)#putF (("Avoid Rectangle: " ^ java_string_of (Obj.repr ((Obj.magic !avoidRectangle)))), self, "log"))
        done
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        avoidVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        maxNonMatchingPixelDeltas <- 0;
        ();
        ();
        doImageComparisonEveryNthFrame <- doImageComparisonEveryNthFrame_arg;
        (self#setAvoidVector ((new BasicArrayListD.basicArrayListD ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageComparatorConstraints" (fun arguments -> Obj.repr (new imageComparatorConstraints (Obj.obj arguments)))


