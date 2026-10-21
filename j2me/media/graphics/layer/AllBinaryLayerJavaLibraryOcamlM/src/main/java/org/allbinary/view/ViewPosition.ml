(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.view *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)

class viewPosition ((x : int), (y : int), (z : int)) =
  object (self)
    inherit ViewPositionBase.viewPositionBase (x, y, z)
    val mutable allbinaryLayer : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method allbinaryLayer = allbinaryLayer
    method set_allbinaryLayer value' = allbinaryLayer <- value'
    
    

    method getX () : int =
        begin
        (allbinaryLayer#getXP ())
        end [@@warning "-7"]
    

    method getY () : int =
        begin
        (allbinaryLayer#getYP ())
        end [@@warning "-7"]
    

    method getZ () : int =
        begin
        (allbinaryLayer#getZP ())
        end [@@warning "-7"]
    

    method getX2 () : int =
        begin
        ((self#getX ()) + (allbinaryLayer#getWidth ()))
        end [@@warning "-7"]
    

    method getY2 () : int =
        begin
        ((self#getY ()) + (allbinaryLayer#getHeight ()))
        end [@@warning "-7"]
    

    method getZ2 () : int =
        begin
        (java_to_int (Obj.repr ((((self#getZ ()) + (allbinaryLayer#getDepth ()))))))
        end [@@warning "-7"]
    

    method setAllbinaryLayer : 'any1. 'any1 -> unit = fun (allbinaryLayer_arg) ->
        let allbinaryLayer_arg = Obj.repr allbinaryLayer_arg in
        begin
        allbinaryLayer <- (Obj.magic allbinaryLayer_arg)
        end [@@warning "-7"]

    initializer
      begin
        allbinaryLayer <- ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ViewPosition" (fun arguments -> Obj.repr (new viewPosition (Obj.obj arguments)))

let getInstanceD () =
        begin
        (new viewPosition (0, 0, 0))
        end
let () = java_register_static "ViewPosition.getInstanceD" (fun arguments -> Obj.repr (getInstanceD (Obj.obj arguments)))


