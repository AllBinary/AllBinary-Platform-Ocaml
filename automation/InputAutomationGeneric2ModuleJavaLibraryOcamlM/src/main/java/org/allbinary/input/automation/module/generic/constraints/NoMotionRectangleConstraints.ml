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
(* import org.allbinary.input.automation.module.MotionRectangleConstraints *)

class noMotionRectangleConstraints () =
  object (self)
    inherit MotionRectangleConstraints.motionRectangleConstraints ()
    
    

    method isValid : 'any2 'any3. int * 'any2 * 'any3 -> bool = fun ((_frame : int), _bufferedImage, _rectangle) ->
        begin
        true
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ignore (self#setMinDimension ((new Dimension.dimension (0, 0))));
        ignore (self#setMinArea (0));
        ignore (self#setMaxDimension ((new Dimension.dimension (2147483647, 2147483647))));
        ignore (self#setMaxMotionRectangles (2147483647))
      end
  end
let () = java_register_constructor "NoMotionRectangleConstraints" (fun arguments -> Obj.repr (new noMotionRectangleConstraints (Obj.obj arguments)))


