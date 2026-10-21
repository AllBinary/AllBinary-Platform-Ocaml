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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class imageUnifierCell ((width_arg : int), (height_arg : int)) =
  object (self)
    val mutable width : int = (Obj.magic 0)
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = (Obj.magic 0)
    method height = height
    method set_height value' = height <- value'
    
    

    method getWidth () : int =
        begin
        width
        end
    

    method setWidth ((width_arg : int)) : unit =
        begin
        width <- width_arg
        end
    

    method getHeight () : int =
        begin
        height
        end
    

    method setHeight ((height_arg : int)) : unit =
        begin
        height <- height_arg
        end

    initializer
      begin
        width <- (Obj.magic 0);
        height <- (Obj.magic 0);
        ();
        (self#setWidth (width_arg));
        (self#setHeight (height_arg))
      end
  end
let () = java_register_constructor "ImageUnifierCell" (fun arguments -> Obj.repr (new imageUnifierCell (Obj.obj arguments)))


