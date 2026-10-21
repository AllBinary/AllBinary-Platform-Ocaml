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
(* package org.allbinary.input.automation.module.generic.constraints *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.input.automation.module.ImageComparatorConstraints *)

class noImageComparatorConstraints () =
  object (self)
    inherit ImageComparatorConstraints.imageComparatorConstraints (1)
    
    

    method isColorAllowed : 'any2 'any3. int * 'any2 * 'any3 -> bool = fun ((_frame : int), _point, _color) ->
        begin
        true
        end [@@warning "-7-20"]
    

    method isImageValid : 'any1. 'any1 -> bool = fun (_bufferedImage) ->
        begin
        true
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setMaxNonMatchingPixelDeltas (2147483647))
      end
  end
let () = java_register_constructor "NoImageComparatorConstraints" (fun arguments -> Obj.repr (new noImageComparatorConstraints (Obj.obj arguments)))


