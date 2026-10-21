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
(* package org.allbinary.animation.transition.shake *)

open Allbinary_java [@@warning "-33"]

class shakeAnimationListener () =
  object
    

    method onSmallShakeEvent () : unit =
        begin
        ()
        end
    

    method onMediumShakeEvent () : unit =
        begin
        ()
        end
    

    method onLargeShakeEvent () : unit =
        begin
        ()
        end
    

    method onShakeEvent : 'any1. 'any1 -> unit = fun (_shakeEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getType () : int =
        begin
        0
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ShakeAnimationListener" (fun arguments -> Obj.repr (new shakeAnimationListener (Obj.obj arguments)))


