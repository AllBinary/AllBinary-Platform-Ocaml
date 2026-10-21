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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)

let iD : int ref = ref (((SmallIntegerSingletonFactory.getInstance ())#getAt (3)))
let get_iD () = !iD
let set_iD value' = iD := value'
let () = java_register_static "Scoreable.get_iD" (fun _ -> Obj.repr (get_iD ()))
class scoreable ((points_arg : int)) =
  object
    val mutable points : int = 0
    method points = points
    method set_points value' = points <- value'
    
    

    method addPoints ((points_arg : int)) : unit =
        begin
        points <- (points + points_arg)
        end
    

    method removePoints ((points_arg : int)) : unit =
        begin
        points <- (points - points_arg)
        end
    

    method setPoints ((points_arg : int)) : unit =
        begin
        points <- points_arg
        end
    

    method getPoints () : int =
        begin
        points
        end

    initializer
      begin
        ();
        ();
        points <- points_arg
      end
  end
let () = java_register_constructor "Scoreable" (fun arguments -> Obj.repr (new scoreable (Obj.obj arguments)))


