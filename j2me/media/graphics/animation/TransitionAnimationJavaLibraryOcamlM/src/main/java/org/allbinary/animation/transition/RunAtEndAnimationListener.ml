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
(* package org.allbinary.animation.transition *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class runAtEndAnimationListener ((runnable_arg : java_runnable)) =
  object
    val mutable runnable : java_runnable = (Obj.magic 0)
    method runnable = runnable
    method set_runnable value' = runnable <- value'
    
    

    method onPlatformAnimationStart () : unit =
        begin
        ()
        end
    

    method onPlatformAnimationEnd () : unit =
        begin
        ()
        end
    

    method onPlatformAnimationRepeat () : unit =
        begin
        ()
        end

    initializer
      begin
        ();
        ();
        runnable <- runnable_arg
      end
  end
let () = java_register_constructor "RunAtEndAnimationListener" (fun arguments -> Obj.repr (new runAtEndAnimationListener (Obj.obj arguments)))


