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
(* package org.allbinary.game.terrain *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)

class basicTerrainInfo ((angle_arg : Angle.angle)) =
  object
    val mutable angle : Angle.angle = (Obj.magic 0)
    method angle = angle
    method set_angle value' = angle <- value'
    
    

    method getAngle () : Angle.angle =
        begin
        (angle :> Angle.angle)
        end
    

    method setAngle : 'any1. 'any1 -> unit = fun (angle_arg) ->
        let angle_arg = Obj.repr angle_arg in
        begin
        angle <- (Obj.magic angle_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        angle <- angle_arg
      end
  end
let () = java_register_constructor "BasicTerrainInfo" (fun arguments -> Obj.repr (new basicTerrainInfo (Obj.obj arguments)))

let nULL_BASIC_TERRAIN_INFO = (new basicTerrainInfo ((AngleFactory.getInstance ())#nOT_ANGLE))
let get_nULL_BASIC_TERRAIN_INFO () = nULL_BASIC_TERRAIN_INFO
let () = java_register_static "BasicTerrainInfo.get_nULL_BASIC_TERRAIN_INFO" (fun _ -> Obj.repr (get_nULL_BASIC_TERRAIN_INFO ()))


