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
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.util.BasicArrayList *)


let allPointsInside : 'any5. int * int * int * int * 'any5 -> bool = fun ((rectX1 : int), (rectY1 : int), (rectX2 : int), (rectY2 : int), list) ->
        let list = Obj.repr list in
        try
        begin
        let rectangleCollisionUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "RectangleCollisionUtil.getInstance" (Obj.repr ()))))) in ();
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let index : int ref = ref (((Obj.magic list)#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            point := (Obj.magic (Obj.magic list)#objectArray.(!index));
            if (not ((Obj.magic !rectangleCollisionUtil)#isInside (rectX1, rectY1, rectX2, rectY2, (!point#getX ()), (!point#getY ())))) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

and allPointsInsideCell : 'any5. int * int * int * int * 'any5 * int * int -> bool = fun ((rectX1 : int), (rectY1 : int), (rectX2 : int), (rectY2 : int), list, (xCellSize : int), (yCellSize : int)) ->
        let list = Obj.repr list in
        try
        begin
        let rectangleCollisionUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "RectangleCollisionUtil.getInstance" (Obj.repr ()))))) in ();
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let index : int ref = ref (((Obj.magic list)#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            point := (Obj.magic (Obj.magic list)#objectArray.(!index));
            if (not ((Obj.magic !rectangleCollisionUtil)#isInside (rectX1, rectY1, rectX2, rectY2, ((!point#getX ()) * xCellSize), ((!point#getY ()) * yCellSize)))) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "RectangleCollisionPointUtil.allPointsInside" (fun arguments -> Obj.repr (allPointsInside (Obj.obj arguments)))
let () = java_register_static "RectangleCollisionPointUtil.allPointsInsideCell" (fun arguments -> Obj.repr (allPointsInsideCell (Obj.obj arguments)))
class rectangleCollisionPointUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "RectangleCollisionPointUtil" (fun arguments -> Obj.repr (new rectangleCollisionPointUtil (Obj.obj arguments)))


