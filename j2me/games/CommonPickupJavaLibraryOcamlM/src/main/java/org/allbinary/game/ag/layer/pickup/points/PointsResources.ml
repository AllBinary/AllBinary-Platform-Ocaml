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
(* package org.allbinary.game.ag.layer.pickup.points *)

open Allbinary_java [@@warning "-33"]

class pointsResources () =
  object
    val mutable rESOURCE : string = ""
    method rESOURCE = rESOURCE
    method set_rESOURCE value' = rESOURCE <- value'
    val mutable rESOURCE_2 : string = ""
    method rESOURCE_2 = rESOURCE_2
    method set_rESOURCE_2 value' = rESOURCE_2 <- value'
    val mutable rESOURCE_3 : string = ""
    method rESOURCE_3 = rESOURCE_3
    method set_rESOURCE_3 value' = rESOURCE_3 <- value'
    val mutable rESOURCE_4 : string = ""
    method rESOURCE_4 = rESOURCE_4
    method set_rESOURCE_4 value' = rESOURCE_4 <- value'
    

    initializer
      begin
        rESOURCE <- "points_drop_20_by_20.png";
        rESOURCE_2 <- "points_2_drop_20_by_20.png";
        rESOURCE_3 <- "points_3_drop_20_by_20.png";
        rESOURCE_4 <- "points_4_drop_20_by_20.png";
        ();
        ()
      end
  end
let () = java_register_constructor "PointsResources" (fun arguments -> Obj.repr (new pointsResources (Obj.obj arguments)))

let sINGLETON = (new pointsResources ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "PointsResources.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "PointsResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


