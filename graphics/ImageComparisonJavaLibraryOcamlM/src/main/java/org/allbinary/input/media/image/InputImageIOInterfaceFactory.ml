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
(* package org.allbinary.input.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.media.image.capture.CapturedImageInputOutput *)
(* import org.allbinary.media.image.comparison.ComparisonImageInputOutput *)
(* import org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput *)
(* import org.allbinary.media.image.io.ImageIOInterface *)


let getInstance : 'any1. 'any1 -> ImageIOInterface.imageIOInterface = fun (imageType) ->
        let imageType = Obj.repr imageType in
        try
        begin
        if ((Obj.repr (Obj.magic imageType)) == (Obj.repr (InputImageType.get_cAPTURE ()))) then begin
            raise (Java_return (Obj.repr ((new CapturedImageInputOutput.capturedImageInputOutput ()))))
        end else if ((Obj.repr (Obj.magic imageType)) == (Obj.repr (InputImageType.get_cOMPARISON ()))) then begin
            raise (Java_return (Obj.repr ((new ComparisonImageInputOutput.comparisonImageInputOutput ()))))
        end else if ((Obj.repr (Obj.magic imageType)) == (Obj.repr (InputImageType.get_mOTION ()))) then begin
            raise (Java_return (Obj.repr ((new MotionRectanglesImageInputOutput.motionRectanglesImageInputOutput ()))))
        end else begin
            raise (Failure (("No ImageIOInterface for: " ^ (java_string_of (Obj.repr (Obj.magic imageType))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "InputImageIOInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class inputImageIOInterfaceFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InputImageIOInterfaceFactory" (fun arguments -> Obj.repr (new inputImageIOInterfaceFactory (Obj.obj arguments)))


