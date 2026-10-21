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
(* package org.allbinary.game.physics.acceleration *)

open Allbinary_java [@@warning "-33"]

class basicAccelerationProperties ((forward_arg : int), (reverse_arg : int)) =
  object (self)
    val mutable forward : int = 0
    method forward = forward
    method set_forward value' = forward <- value'
    val mutable reverse : int = 0
    method reverse = reverse
    method set_reverse value' = reverse <- value'
    
    

    method setReverse ((reverse_arg : int)) : unit =
        begin
        reverse <- reverse_arg
        end
    

    method getReverse () : int =
        begin
        reverse
        end
    

    method setForward ((forward_arg : int)) : unit =
        begin
        forward <- forward_arg
        end
    

    method getForward () : int =
        begin
        forward
        end

    initializer
      begin
        forward <- 0;
        reverse <- 0;
        ();
        (self#setForward (forward_arg));
        (self#setReverse (reverse_arg))
      end
  end
let () = java_register_constructor "BasicAccelerationProperties" (fun arguments -> Obj.repr (new basicAccelerationProperties (Obj.obj arguments)))


