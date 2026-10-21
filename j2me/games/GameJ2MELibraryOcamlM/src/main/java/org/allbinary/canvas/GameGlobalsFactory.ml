(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)

class gameGlobalsFactory () =
  object
    val mutable newCanvas : bool = false
    method newCanvas = newCanvas
    method set_newCanvas value' = newCanvas <- value'
    val mutable newDisplaybleTime : int = 0
    method newDisplaybleTime = newDisplaybleTime
    method set_newDisplaybleTime value' = newDisplaybleTime <- value'
    val mutable point : GPoint.gPoint = (Obj.magic 0)
    method point = point
    method set_point value' = point <- value'

    initializer
      begin
        newCanvas <- true;
        newDisplaybleTime <- (java_to_int (Obj.repr ((-2147483648))));
        point <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        ()
      end
  end
let () = java_register_constructor "GameGlobalsFactory" (fun arguments -> Obj.repr (new gameGlobalsFactory (Obj.obj arguments)))

let instance = (new gameGlobalsFactory ())
let get_instance () = instance
let () = java_register_static "GameGlobalsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameGlobalsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


