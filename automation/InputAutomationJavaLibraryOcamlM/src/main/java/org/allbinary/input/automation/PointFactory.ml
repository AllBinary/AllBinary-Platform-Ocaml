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
(* package org.allbinary.input.automation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)

let pointArray : Obj.t ref = ref ((Obj.repr (Array.make_matrix (3000) (3000) (Obj.magic 0))))
let get_pointArray () = Obj.magic !pointArray
let set_pointArray value' = pointArray := Obj.repr value'
let () = java_register_static "PointFactory.get_pointArray" (fun _ -> Obj.repr (get_pointArray ()))
class pointFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PointFactory" (fun arguments -> Obj.repr (new pointFactory (Obj.obj arguments)))

let getInstance : 'return. int * int -> 'return = fun ((x : int), (y : int)) ->
        begin
        let point : Obj.t ref = ref ((Obj.repr (Obj.magic !pointArray).(x).(y))) in ();
        if ((Obj.magic !point) == (Obj.magic 0)) then begin
            (Obj.magic !pointArray).(x).(y) <- (Obj.obj (java_new "Point" (Obj.repr (x, y))));
            point := Obj.repr ((Obj.magic !pointArray).(x).(y))
        end;
        (Obj.magic ((Obj.magic !point)))
        end
let () = java_register_static "PointFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


