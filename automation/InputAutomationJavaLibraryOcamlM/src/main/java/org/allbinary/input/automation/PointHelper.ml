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

let two : float = 2.
let get_two () = two
let () = java_register_static "PointHelper.get_two" (fun _ -> Obj.repr (get_two ()))

let getCenterPoint : 'any1 'return. 'any1 -> 'return = fun (rectangle) ->
        let rectangle = Obj.repr rectangle in
        begin
        let x : float ref = ref ((((Obj.magic rectangle)#getX ()) + (((Obj.magic rectangle)#getWidth ()) / two))) in ();
        let y : float ref = ref ((((Obj.magic rectangle)#getY ()) + (((Obj.magic rectangle)#getHeight ()) / two))) in ();
        (Obj.magic ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ((int_of_float (!x)), (int_of_float (!y))))))))
        end [@@warning "-20"]

let () = java_register_static "PointHelper.getCenterPoint" (fun arguments -> Obj.repr (getCenterPoint (Obj.obj arguments)))
class pointHelper () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PointHelper" (fun arguments -> Obj.repr (new pointHelper (Obj.obj arguments)))


