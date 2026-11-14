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

let sINGLETON : Rectangle.rectangle = ((new Rectangle.rectangle ((PointFactory.getInstance ())#zERO_ZERO, 0, 0)) :> Rectangle.rectangle)
let get_sINGLETON () = sINGLETON
let () = java_register_static "RectangleFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))
let aRRAY_OF_ARRAYS : Rectangle.rectangle array array = (Array.make_matrix (0) (0) (Obj.magic 0))
let get_aRRAY_OF_ARRAYS () = aRRAY_OF_ARRAYS
let () = java_register_static "RectangleFactory.get_aRRAY_OF_ARRAYS" (fun _ -> Obj.repr (get_aRRAY_OF_ARRAYS ()))
class rectangleFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RectangleFactory" (fun arguments -> Obj.repr (new rectangleFactory (Obj.obj arguments)))


