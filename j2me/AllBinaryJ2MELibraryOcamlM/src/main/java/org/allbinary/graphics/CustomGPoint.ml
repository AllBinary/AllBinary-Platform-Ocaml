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

class customGPoint ((x : int), (y : int), (z : int)) =
  object
    inherit GPoint.gPoint (x, y, z)
    val mutable cx : int = 0
    method cx = cx
    method set_cx value' = cx <- value'
    val mutable cy : int = 0
    method cy = cy
    method set_cy value' = cy <- value'
    val mutable cz : int = 0
    method cz = cz
    method set_cz value' = cz <- value'
    
    

    method setX ((x : int)) : unit =
        begin
        cx <- x
        end [@@warning "-7"]
    

    method getX () : int =
        begin
        cx
        end [@@warning "-7"]
    

    method setY ((y : int)) : unit =
        begin
        cy <- y
        end [@@warning "-7"]
    

    method getY () : int =
        begin
        cy
        end [@@warning "-7"]
    

    method setZ ((z : int)) : unit =
        begin
        cz <- z
        end [@@warning "-7"]
    

    method getZ () : int =
        begin
        cz
        end [@@warning "-7"]

    initializer
      begin
        cx <- 0;
        cy <- 0;
        cz <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CustomGPoint" (fun arguments -> Obj.repr (new customGPoint (Obj.obj arguments)))

let nULL_CUSTOM_POINT = (new customGPoint (0, 0, 0))
let get_nULL_CUSTOM_POINT () = nULL_CUSTOM_POINT
let () = java_register_static "CustomGPoint.get_nULL_CUSTOM_POINT" (fun _ -> Obj.repr (get_nULL_CUSTOM_POINT ()))

let getInstance : 'any1. 'any1 -> _ = fun (point) ->
        let point = Obj.repr point in
        begin
        (new customGPoint (((Obj.magic point)#getX ()), ((Obj.magic point)#getY ()), ((Obj.magic point)#getZ ())))
        end [@@warning "-20"]

and getInstance3 ((x : int), (y : int)) =
        begin
        (new customGPoint (x, y, 3))
        end
let () = java_register_static "CustomGPoint.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "CustomGPoint.getInstance3" (fun arguments -> Obj.repr (getInstance3 (Obj.obj arguments)))


