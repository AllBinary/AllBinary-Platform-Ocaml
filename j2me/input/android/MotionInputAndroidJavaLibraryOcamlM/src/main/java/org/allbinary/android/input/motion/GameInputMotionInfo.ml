(*

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]

class gameInputMotionInfo ((maxApi : int), (maxPointers : int)) =
  object
    val mutable mAX_API : int = 0
    method mAX_API = mAX_API
    method set_mAX_API value' = mAX_API <- value'
    val mutable mAX_POINTERS : int = 0
    method mAX_POINTERS = mAX_POINTERS
    method set_mAX_POINTERS value' = mAX_POINTERS <- value'
    

    initializer
      begin
        ();
        ();
        ();
        mAX_API <- maxApi;
        mAX_POINTERS <- maxPointers
      end
  end
let () = java_register_constructor "GameInputMotionInfo" (fun arguments -> Obj.repr (new gameInputMotionInfo (Obj.obj arguments)))


