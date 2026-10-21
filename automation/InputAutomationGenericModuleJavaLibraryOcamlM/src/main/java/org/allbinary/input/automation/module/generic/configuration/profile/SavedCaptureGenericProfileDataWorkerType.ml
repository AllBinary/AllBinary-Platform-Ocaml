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
(* package org.allbinary.input.automation.module.generic.configuration.profile *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.input.media.image.InputImageType *)

class savedCaptureGenericProfileDataWorkerType ((name : string), (path_arg : string), (lastFrame_arg : int)) =
  object (self)
    inherit GenericProfileDataWorkerType.genericProfileDataWorkerType (name)
    val mutable path : string = ""
    method path = path
    method set_path value' = path <- value'
    val mutable lastFrame : int = 0
    method lastFrame = lastFrame
    method set_lastFrame value' = lastFrame <- value'
    
    

    method getPath () : string =
        begin
        path
        end [@@warning "-7"]
    

    method setPath ((path_arg : string)) : unit =
        begin
        path <- path_arg
        end [@@warning "-7"]
    

    method getLastFrame () : int =
        begin
        lastFrame
        end [@@warning "-7"]
    

    method setLastFrame ((lastFrame_arg : int)) : unit =
        begin
        lastFrame <- lastFrame_arg
        end [@@warning "-7"]

    initializer
      begin
        path <- "";
        lastFrame <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        (self#setPath (path_arg));
        (self#setLastFrame (lastFrame_arg))
      end
  end
let () = java_register_constructor "SavedCaptureGenericProfileDataWorkerType" (fun arguments -> Obj.repr (new savedCaptureGenericProfileDataWorkerType (Obj.obj arguments)))

let sAVED_CAPTURE = ref ((new savedCaptureGenericProfileDataWorkerType (("Saved " ^ ((InputImageType.get_cAPTURE ())#getName ())), "c:\\share\\captures\\2\\", 100)))
let get_sAVED_CAPTURE () = !sAVED_CAPTURE
let set_sAVED_CAPTURE value' = sAVED_CAPTURE := value'
let () = java_register_static "SavedCaptureGenericProfileDataWorkerType.get_sAVED_CAPTURE" (fun _ -> Obj.repr (get_sAVED_CAPTURE ()))


