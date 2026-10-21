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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]

let instance : ScreenCapture.screenCapture = ((ScreenCaptureNoneFactory.getInstance ()) :> ScreenCapture.screenCapture)
let get_instance () = instance
let () = java_register_static "ScreenCaptureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : ScreenCapture.screenCapture =
        begin
        (instance :> ScreenCapture.screenCapture)
        end

let () = java_register_static "ScreenCaptureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class screenCaptureFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ScreenCaptureFactory" (fun arguments -> Obj.repr (new screenCaptureFactory (Obj.obj arguments)))


