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
(* package org.allbinary.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class vectorInfo ((width_arg : int), (height_arg : int), (points_arg : int array array), (totalFrames_arg : int)) =
  object
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    val mutable points : int array array = (Obj.magic 0)
    method points = points
    method set_points value' = points <- value'
    val mutable totalFrames : int = 0
    method totalFrames = totalFrames
    method set_totalFrames value' = totalFrames <- value'
    
    

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
    

    method getPoints () : int array array =
        begin
        points
        end
    

    method setPoints ((points_arg : int array array)) : unit =
        begin
        points <- points_arg
        end
    

    method getTotalFrames () : int =
        begin
        totalFrames
        end
    

    method setTotalFrames ((totalFrames_arg : int)) : unit =
        begin
        totalFrames <- totalFrames_arg
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        width <- width_arg;
        height <- height_arg;
        points <- points_arg;
        totalFrames <- totalFrames_arg
      end
  end
let () = java_register_constructor "VectorInfo" (fun arguments -> Obj.repr (new vectorInfo (Obj.obj arguments)))


