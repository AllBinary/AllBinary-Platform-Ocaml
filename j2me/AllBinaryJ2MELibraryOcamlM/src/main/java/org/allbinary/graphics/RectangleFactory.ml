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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let aRRAY_OF_ARRAYS : Obj.t = (Obj.repr (Array.make_matrix (0) (0) (Obj.magic 0)))
let get_aRRAY_OF_ARRAYS () = Obj.magic aRRAY_OF_ARRAYS
let () = java_register_static "RectangleFactory.get_aRRAY_OF_ARRAYS" (fun _ -> Obj.repr (get_aRRAY_OF_ARRAYS ()))
class rectangleFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RectangleFactory" (fun arguments -> Obj.repr (new rectangleFactory (Obj.obj arguments)))

let sINGLETON : Obj.t = (Obj.repr (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 0, 0)))))
let get_sINGLETON () = Obj.magic sINGLETON
let () = java_register_static "RectangleFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))


