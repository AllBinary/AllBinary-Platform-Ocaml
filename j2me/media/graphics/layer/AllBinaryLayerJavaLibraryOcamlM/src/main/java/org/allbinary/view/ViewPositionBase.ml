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
(* package org.allbinary.view *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.GPoint *)

class viewPositionBase ((x : int), (y : int), (z : int)) =
  object (self)
    inherit GPoint.gPoint (x, y, z)
    
    

    method getX2 () : int =
        begin
        (self#getX ())
        end [@@warning "-7"]
    

    method getY2 () : int =
        begin
        (self#getY ())
        end [@@warning "-7"]
    

    method getZ2 () : int =
        begin
        (self#getZ ())
        end [@@warning "-7"]
    

    method setAllbinaryLayer : 'any1. 'any1 -> unit = fun (_allbinaryLayer) ->
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ViewPositionBase" (fun arguments -> Obj.repr (new viewPositionBase (Obj.obj arguments)))

let nULL_VIEW_POSITION = (new viewPositionBase (0, 0, 0))
let get_nULL_VIEW_POSITION () = nULL_VIEW_POSITION
let () = java_register_static "ViewPositionBase.get_nULL_VIEW_POSITION" (fun _ -> Obj.repr (get_nULL_VIEW_POSITION ()))


