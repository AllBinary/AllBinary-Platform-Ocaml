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
(* package org.allbinary.collision *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import org.allbinary.graphics.GPoint *)


let rec isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (rectangle, point) ->
        let rectangle = Obj.repr rectangle in
        let point = Obj.repr point in
        try
        begin
        if ((((((Obj.magic point)#getX ()) > (((java_to_int (Obj.repr ((Obj.magic rectangle)#x))) + ((Obj.magic rectangle)#getWidth ())))) || (((Obj.magic point)#getY ()) > (((java_to_int (Obj.repr ((Obj.magic rectangle)#y))) + ((Obj.magic rectangle)#getHeight ()))))) || (((Obj.magic point)#getX ()) < (Obj.magic rectangle)#x)) || (((Obj.magic point)#getY ()) < (Obj.magic rectangle)#y)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

(* Java overload isCollision(Rectangle, Rectangle) is not converted: OCaml has one method per name *)

(* Java overload isCollision(INT, INT, INT, INT, INT, INT, INT, INT) is not converted: OCaml has one method per name *)

let () = java_register_static "RectangleCollisionUtil.isCollision" (fun arguments -> Obj.repr (isCollision (Obj.obj arguments)))
class rectangleCollisionUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "RectangleCollisionUtil" (fun arguments -> Obj.repr (new rectangleCollisionUtil (Obj.obj arguments)))


