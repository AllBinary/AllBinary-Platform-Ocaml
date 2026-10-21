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
(* package org.allbinary.input.automation.module.generic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerType *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.SavedCaptureGenericProfileDataWorkerType *)
(* import org.allbinary.input.media.image.capture.CaptureWorkerInterface *)
(* import org.allbinary.input.media.image.capture.ScreenCaptureImagesWorker *)


let getInstance : 'any1. 'any1 -> CaptureWorkerInterface.captureWorkerInterface = fun (genericProfile) ->
        let genericProfile = Obj.repr genericProfile in
        try
        begin
        let vector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic genericProfile)#getGenericProfileDataWorkerTypeVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let genericProfileDataWorkerType : GenericProfileDataWorkerType.genericProfileDataWorkerType ref = ref (((Obj.magic (!vector#get (index))) :> GenericProfileDataWorkerType.genericProfileDataWorkerType)) in ();
            if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_sCREEN_CAPTURE ()))) then begin
                raise (Java_return (Obj.repr ((new ScreenCaptureImagesWorker.screenCaptureImagesWorker ()))))
            end else if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_sAVED_CAPTURE ()))) then begin
                raise (Java_return (Obj.repr ((new SavedCaptureImagesWorker.savedCaptureImagesWorker ((Obj.magic !genericProfileDataWorkerType))))))
            end
        done;
        raise (Failure ("No CaptureWorkerInterface specified in GenericProfile"))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "GenericProfileCaptureWorkerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class genericProfileCaptureWorkerFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GenericProfileCaptureWorkerFactory" (fun arguments -> Obj.repr (new genericProfileCaptureWorkerFactory (Obj.obj arguments)))


