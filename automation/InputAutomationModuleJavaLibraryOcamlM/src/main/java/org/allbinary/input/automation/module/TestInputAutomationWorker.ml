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
(* import org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker *)
(* import org.allbinary.media.image.comparison.ImageComparisonWorker *)
(* import org.allbinary.media.image.comparison.SaveImageComparisonWorker *)
(* import org.allbinary.media.image.comparison.motion.MotionRectanglesWorker *)
(* import org.allbinary.media.image.comparison.motion.SaveMotionRectanglesResultsWorker *)
(* import org.allbinary.media.image.comparison.motion.TestInputForMotionRectanglesResultsWorker *)

class testInputAutomationWorker () =
  object
    val mutable captureWorker : ScreenCaptureImagesWorker.screenCaptureImagesWorker = (Obj.magic 0)
    method captureWorker = captureWorker
    method set_captureWorker value' = captureWorker <- value'
    val mutable imageComparisonWorker : ImageComparisonWorker.imageComparisonWorker = (Obj.magic 0)
    method imageComparisonWorker = imageComparisonWorker
    method set_imageComparisonWorker value' = imageComparisonWorker <- value'
    val mutable motionRectanglesWorker : MotionRectanglesWorker.motionRectanglesWorker = (Obj.magic 0)
    method motionRectanglesWorker = motionRectanglesWorker
    method set_motionRectanglesWorker value' = motionRectanglesWorker <- value'
    val mutable changedPixelsImageComparisonResultsWorker : SaveImageComparisonWorker.saveImageComparisonWorker = (Obj.magic 0)
    method changedPixelsImageComparisonResultsWorker = changedPixelsImageComparisonResultsWorker
    method set_changedPixelsImageComparisonResultsWorker value' = changedPixelsImageComparisonResultsWorker <- value'
    val mutable saveMotionRectanglesAsImagesWorker : SaveMotionRectanglesResultsWorker.saveMotionRectanglesResultsWorker = (Obj.magic 0)
    method saveMotionRectanglesAsImagesWorker = saveMotionRectanglesAsImagesWorker
    method set_saveMotionRectanglesAsImagesWorker value' = saveMotionRectanglesAsImagesWorker <- value'
    val mutable moveMouseToFirstMotionRectanglesResultsWorker : TestInputForMotionRectanglesResultsWorker.testInputForMotionRectanglesResultsWorker = (Obj.magic 0)
    method moveMouseToFirstMotionRectanglesResultsWorker = moveMouseToFirstMotionRectanglesResultsWorker
    method set_moveMouseToFirstMotionRectanglesResultsWorker value' = moveMouseToFirstMotionRectanglesResultsWorker <- value'
    

    initializer
      begin
        ();
        imageComparisonWorker <- ((Obj.magic 0) :> ImageComparisonWorker.imageComparisonWorker);
        motionRectanglesWorker <- ((Obj.magic 0) :> MotionRectanglesWorker.motionRectanglesWorker);
        ();
        ();
        ();
        ();
        captureWorker <- (new ScreenCaptureImagesWorker.screenCaptureImagesWorker ());
        changedPixelsImageComparisonResultsWorker <- (new SaveImageComparisonWorker.saveImageComparisonWorker ());
        saveMotionRectanglesAsImagesWorker <- (new SaveMotionRectanglesResultsWorker.saveMotionRectanglesResultsWorker ());
        moveMouseToFirstMotionRectanglesResultsWorker <- (new TestInputForMotionRectanglesResultsWorker.testInputForMotionRectanglesResultsWorker ());
        ignore (motionRectanglesWorker#addListenerInterface (saveMotionRectanglesAsImagesWorker));
        ignore (motionRectanglesWorker#addListenerInterface (moveMouseToFirstMotionRectanglesResultsWorker));
        ignore (imageComparisonWorker#addListenerInterface (changedPixelsImageComparisonResultsWorker));
        ignore (imageComparisonWorker#addListenerInterface (motionRectanglesWorker));
        ignore (captureWorker#addListenerInterface (imageComparisonWorker))
      end
  end
let () = java_register_constructor "TestInputAutomationWorker" (fun arguments -> Obj.repr (new testInputAutomationWorker (Obj.obj arguments)))


