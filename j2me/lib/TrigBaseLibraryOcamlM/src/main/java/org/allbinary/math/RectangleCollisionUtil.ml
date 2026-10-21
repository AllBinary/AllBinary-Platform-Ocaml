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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

class rectangleCollisionUtil () =
  object
    
    

    method isCollision ((rectX1 : int), (rectY1 : int), (rectX2 : int), (rectY2 : int), (rect2X1 : int), (rect2Y1 : int), (rect2X2 : int), (rect2Y2 : int)) : bool =
        try
        begin
        if ((((rect2X1 >= rectX2) || (rect2Y1 >= rectY2)) || (rect2X2 <= rectX1)) || (rect2Y2 <= rectY1)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isInside ((rectX1 : int), (rectY1 : int), (rectX2 : int), (rectY2 : int), (x : int), (y : int)) : bool =
        try
        begin
        if ((((x >= rectX2) || (y >= rectY2)) || (x <= rectX1)) || (y <= rectY1)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "RectangleCollisionUtil" (fun arguments -> Obj.repr (new rectangleCollisionUtil (Obj.obj arguments)))

let instance = (new rectangleCollisionUtil ())
let get_instance () = instance
let () = java_register_static "RectangleCollisionUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RectangleCollisionUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


